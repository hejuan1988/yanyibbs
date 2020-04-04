# -*- coding: utf-8 -*-
# @Time: 2018/10/29 21:37
# @Author: 素还真
# @File: encrypt.py
# @SoftWare: PyCharm
import hashlib
import base64

def md5(character,coding='utf-8'):
   encstr = character.encode(coding)
   md5_enc = hashlib.md5()
   md5_enc.update(encstr)
   return md5_enc.hexdigest()

def base64_encode(character,coding = 'utf-8'):
    enc_str = character.encode(coding)
    base64_enc = base64.b64encode(enc_str)
    return base64_enc.decode()

def base64_decode(character, coding = 'utf-8'):
    dec_str = character.encode(coding)
    base64_dec = base64.b64decode(dec_str)
    return base64_dec.decode()
def sha1(character, coding='utf-8'):
    encstr=character.encode(coding)
    sha1_enc=hashlib.sha1()
    sha1_enc.update(encstr)
    return sha1_enc.hexdigest()

def sha256(character, coding='utf-8'):
    encstr=character.encode(coding)
    sha256_enc=hashlib.sha256()
    sha256_enc.update(encstr)
    return sha256_enc.hexdigest()

def sha512(character, coding='utf-8'):
    encstr=character.encode(coding)
    sha512_enc=hashlib.sha512()
    sha512_enc.update(encstr)
    return sha512_enc.hexdigest()