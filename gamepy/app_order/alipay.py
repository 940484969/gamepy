'''
Created on 2020年1月9日

@author: lan
'''
import base64
import copy
# _*_ coding=utf-8 _*_
from datetime import datetime
from Crypto.Signature import PKCS1_v1_5 as Sig_pk
from Cryptodome.Cipher import PKCS1_v1_5
from Cryptodome.Hash import SHA256
from Cryptodome.PublicKey import RSA

# from Crypto.PublicKey import RSA

# from Crypto.Signature import PKCS1_v1_5
from datetime import datetime
from Crypto.PublicKey import RSA
from Crypto.Signature import PKCS1_v1_5
from Crypto.Hash import SHA256

from urllib.parse import quote_plus
from base64 import decodebytes, encodebytes
import json
from cryptography.hazmat.backends.openssl import rsa


# def rsa_long_decrypt(priv_key_str, msg, length=256):
#     """
#     1024bit的证书用128，2048bit证书用256位
#     """
#     privobj = rsa.importKey(priv_key_str)
#     privobj = PKCS1_v1_5.new(privobj)
#     res = []
#     for i in range(0, len(msg), length):
#         res.append(privobj.decrypt(msg[i:i+length], 'xyz'))
#     return "".join(res)
#
#
# def rsa_long_encrypt(pub_key_str, msg, length=200):
#     """
#     单次加密串的长度最大为 (key_size/8)-11
#     1024bit的证书用100， 2048bit的证书用 200
#     """
#     # pubobj = rsa.importKey(pub_key_str)
#     pubobj = PKCS1_v1_5.new(pub_key_str)
#     res = []
#     for i in range(0, len(msg), length):
#         # print(msg[i:i + length])
#         res.append(pubobj.encrypt(msg[i:i + length]))
#
#
#     # print(res)
#     return "".join(res)


class AliPay(object):
    """
    支付宝支付接口(PC端支付接口)
    """

    def __init__(self, appid, app_notify_url, app_private_key_path,
                 alipay_public_key_path, return_url, debug=False):
        self.appid = appid
        self.app_notify_url = app_notify_url
        self.app_private_key_path = app_private_key_path
        self.app_private_key = None
        self.return_url = return_url
        with open(self.app_private_key_path, encoding="utf-8") as fp:
            self.app_private_key = RSA.importKey(fp.read())





        self.alipay_public_key_path = alipay_public_key_path
        with open(self.alipay_public_key_path) as fp:
            self.alipay_public_key = RSA.importKey(fp.read())

        if debug is True:
            self.__gateway = "https://openapi.alipaydev.com/gateway.do"
        else:
            self.__gateway = "https://openapi.alipay.com/gateway.do"

    def direct_pay(self, subject, out_trade_no, id, total_amount, return_url=None, **kwargs):

        biz_content = {
            "id": id,
            "subject": subject,
            "out_trade_no": out_trade_no,
            "total_amount": total_amount,
            "product_code": "FAST_INSTANT_TRADE_PAY",
            # "qr_pay_mode":4

        }

        biz_content.update(kwargs)
        data = self.build_body("alipay.trade.page.pay", biz_content, self.return_url)
        # print(data)
        # print(self.sign_data(data))
        return self.sign_data(data)

    def build_body(self, method,  biz_content, return_url=None):
        data = {
            "app_id": self.appid,
            "method": method,

            "charset": "utf-8",
            "sign_type": "RSA2",
            "timestamp": datetime.now().strftime("%Y-%m-%d %H:%M:%S"),
            "version": "1.0",
            "biz_content": biz_content
        }

        if return_url is not None:
            data["notify_url"] = self.app_notify_url
            data["return_url"] = self.return_url

        return data

    def sign_data(self, data):
        data.pop("sign", None)
        # print("*"*50)
        # 排序后的字符串
        unsigned_items = self.ordered_data(data)
        # print(unsigned_items)
        # print("*" * 50)
        unsigned_string = "&".join("{0}={1}".format(k, v) for k, v in unsigned_items)
        # print("-" * 50)
        # print(unsigned_string)
        # print("-"*50)
        sign = self.sign(unsigned_string.encode("utf-8"))
        # ordered_items = self.ordered_data(data)
        # print("+" * 50)
        # print(sign)
        # print("+" * 50)
        quoted_string = "&".join("{0}={1}".format(k, quote_plus(str(v))) for k, v in unsigned_items)
        # print(quoted_string)
        # 获得最终的订单信息字符串
        signed_string = quoted_string + "&sign=" + quote_plus(sign)
        # print("x"*100)
        # print(signed_string)
        return signed_string

    # def sign_data(self, data):
    #     data.pop("sign", None)
    #     # 排序后的字符串
    #     unsigned_items = self.ordered_data(data)
    #     unsigned_string = "&".join("{0}={1}".format(k, v) for k, v in unsigned_items)
    #     sign = self.sign(unsigned_string.encode("utf-8"))
    #
    #     # ordered_items = self.ordered_data(data)
    #     quoted_string = "&".join("{0}={1}".format(k, str(quote_plus(v))) for k, v in unsigned_items)
    #     # print(quoted_string)
    #     # 获得最终的订单信息字符串
    #     # signed_string = quoted_string + "&sign=" + quote_plus(sign)
    #     signed_string = quoted_string + "&sign=" + quote_plus(unsigned_string.encode("utf-8"))
    #     return signed_string

    def ordered_data(self, data):
        complex_keys = []
        for key, value in data.items():
            if isinstance(value, dict):
                complex_keys.append(key)

        # 将字典类型的数据dump出来
        for key in complex_keys:
            data[key] = json.dumps(data[key], separators=(',', ':'))
        print(data)

        return sorted([(k, v) for k, v in data.items()])

    def sign(self, unsigned_string):
        # 开始计算签名
        key = self.app_private_key
        # print(key)
        # signer = PKCS1_v1_5.new(key)
        # # # print(signer)
        # signature = signer.sign(SHA256.new(unsigned_string))
        # sign = encodebytes(signature).decode("utf8").replace("\n", "")
        # 获取私钥

        # key = base64.b64decode(private_key)

        # 根据sha算法处理签名内容  (此处的hash算法不一定是sha,看开发)
        data = SHA256.new(unsigned_string)
        # 私钥进行签名
        sig_pk = Sig_pk.new(key)
        signer = sig_pk.sign(data)
        # 将签名后的内容，转换为base64编码
        result = base64.b64encode(signer)
        # 签名结果转换成字符串
        sign = result.decode().replace("\n", "")
        # print(sign)



        return sign

    def _verify(self, raw_content, signature):
        # 开始计算签名
        key = self.alipay_public_key
        signer = PKCS1_v1_5.new(key)
        digest = SHA256.new()
        digest.update(raw_content.encode("utf8"))
        if signer.verify(digest, decodebytes(signature.encode("utf8"))):
            return True
        return False

    def verify(self, data, signature):
        if "sign_type" in data:
            sign_type = data.pop("sign_type")
        # 排序后的字符串
        unsigned_items = self.ordered_data(data)
        message = "&".join(u"{}={}".format(k, v) for k, v in unsigned_items)
        return self._verify(message, signature)
