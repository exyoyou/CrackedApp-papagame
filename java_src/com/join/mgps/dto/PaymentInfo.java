package com.join.mgps.dto;

import com.j256.ormlite.stmt.query.SimpleComparison;

/* JADX INFO: loaded from: classes3.dex */
public class PaymentInfo {
    private String agentId;
    private String billInfo;
    private String billNo;
    private boolean hasError;
    private String message;
    private String tokenID;

    private String getBillInfoItem(String name) {
        if (this.billInfo == null) {
            return null;
        }
        String str = name + SimpleComparison.EQUAL_TO_OPERATION;
        int iIndexOf = this.billInfo.indexOf(str);
        if (iIndexOf < 0) {
            return null;
        }
        int iIndexOf2 = this.billInfo.indexOf(124, iIndexOf);
        return iIndexOf2 >= 0 ? this.billInfo.substring(iIndexOf + str.length(), iIndexOf2) : this.billInfo.substring(iIndexOf + str.length());
    }

    public static String getPayResultName(int status) {
        if (status == -2) {
            return "支付未完成";
        }
        if (status == -1) {
            return "支付失败";
        }
        if (status != 0) {
            return status != 1 ? "" : "支付成功";
        }
        return "处理中...";
    }

    public String getAgentId() {
        return this.agentId;
    }

    public String getBillInfo() {
        return this.billInfo;
    }

    public String getBillNo() {
        return this.billNo;
    }

    public String getJunnetBillNo() {
        return getBillInfoItem("jnet_bill_no");
    }

    public String getMessage() {
        return this.message;
    }

    public String getPayAmount() {
        return getBillInfoItem(Constant.PAY_AMT);
    }

    public int getPayResult() {
        try {
            return Integer.parseInt(getBillInfoItem("result"));
        } catch (Exception unused) {
            return -1;
        }
    }

    public int getPayType() {
        try {
            return Integer.parseInt(getBillInfoItem(Constant.PAY_TYPE));
        } catch (Exception unused) {
            return -1;
        }
    }

    public String getPayTypeName() {
        int payType = getPayType();
        if (payType == 2) {
            return "余额支付";
        }
        if (payType == 10) {
            return "骏卡支付";
        }
        if (payType == 35) {
            return "盛大卡支付";
        }
        if (payType == 29) {
            return "信用卡无卡支付";
        }
        if (payType == 30) {
            return "微信支付";
        }
        switch (payType) {
            case 13:
                return "神州行";
            case 14:
                return "联通卡";
            case 15:
                return "电信卡";
            default:
                switch (payType) {
                    case 17:
                        return "银行无卡支付";
                    case 18:
                        return "银行快捷支付";
                    case 19:
                        return "银行WAP网银支付";
                    default:
                        switch (payType) {
                            case 40:
                                return "第三方卡支付";
                            case 41:
                                return "盛大一卡通";
                            case 42:
                                return "网易一卡通";
                            case 43:
                                return "征途一卡通";
                            case 44:
                                return "完美一卡通";
                            case 45:
                                return "金山一卡通";
                            case 46:
                                return "搜狐一卡通";
                            case 47:
                                return "久游一卡通";
                            case 48:
                                return "乐都一卡通";
                            case 49:
                                return "盛科一卡通";
                            case 50:
                                return "中广一卡通";
                            case 51:
                                return "麒麟一卡通";
                            case 52:
                                return "梦工厂网络";
                            case 53:
                                return "网龙91币卡";
                            case 54:
                                return "极光一卡通";
                            case 55:
                                return "纵游一卡通";
                            case 56:
                                return "多多卡（原奥比建设卡）";
                            case 57:
                                return "QQ币卡";
                            default:
                                return "【未知支付方式】";
                        }
                }
        }
    }

    public String getTokenID() {
        return this.tokenID;
    }

    public boolean hasError() {
        return this.hasError;
    }

    public boolean isHasError() {
        return this.hasError;
    }

    public void setAgentId(String agentId) {
        this.agentId = agentId;
    }

    public void setBillInfo(String billInfo) {
        this.billInfo = billInfo;
        this.billNo = getBillInfoItem(Constant.AGENT_BILL_ID);
    }

    public void setBillNo(String billNo) {
        this.billNo = billNo;
    }

    public void setHasError(boolean hasError) {
        this.hasError = hasError;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public void setTokenID(String tokenID) {
        this.tokenID = tokenID;
    }

    public String getPayResultName() {
        return getPayResultName(getPayResult());
    }
}
