#!/usr/bin/env python
# -*- coding: utf-8 -*-
#
# pam_mates.py
# Validar lusuari realitzant una pregunta de mates
def pam_sm_authenticate(pamh, flags, argv):
	print "Quant fan 100*0?"
	resposta=raw_input()
	if int(resposta) == 0:
		return pamh.PAM_SUCCESS
	else:
		return pamh.PAM_AUTHTOK_ERR
		
def pam_sm_setcred(pamh, flags, argv):
    return pamh.PAM_SUCCESS

def pam_sm_acct_mgmt(pamh, flags, argv):
    return pamh.PAM_SUCCESS

def pam_sm_open_session(pamh, flags, argv):
    return pamh.PAM_SUCCESS

def pam_sm_close_session(pamh, flags, argv):
    return pamh.PAM_SUCCESS

def pam_sm_chauthtok(pamh, flags, argv):
    return pamh.PAM_SUCCESS
