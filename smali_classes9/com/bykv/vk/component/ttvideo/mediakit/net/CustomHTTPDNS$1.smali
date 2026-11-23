.class Lcom/bykv/vk/component/ttvideo/mediakit/net/CustomHTTPDNS$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bykv/vk/component/ttvideo/mediakit/net/CustomHTTPDNS;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bykv/vk/component/ttvideo/mediakit/net/CustomHTTPDNS;


# direct methods
.method constructor <init>(Lcom/bykv/vk/component/ttvideo/mediakit/net/CustomHTTPDNS;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/mediakit/net/CustomHTTPDNS$1;->this$0:Lcom/bykv/vk/component/ttvideo/mediakit/net/CustomHTTPDNS;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 15
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CI_DefaultLocale"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/mediakit/net/CustomHTTPDNS$1;->this$0:Lcom/bykv/vk/component/ttvideo/mediakit/net/CustomHTTPDNS;

    .line 5
    .line 6
    iget-object v2, v2, Lcom/bykv/vk/component/ttvideo/mediakit/net/BaseDNS;->mHostname:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object v2, v1, v3

    .line 10
    .line 11
    sget-object v2, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLDNSParser;->mCustomHttpDNSParser:Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLCustomHTTPDNSParser;

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v2, 0x1

    .line 19
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    aput-object v2, v1, v4

    .line 24
    .line 25
    const-string v2, "----call custom httpdns, host:%s custom parser:%d"

    .line 26
    .line 27
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    sget-object v1, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLDNSParser;->mCustomHttpDNSParser:Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLCustomHTTPDNSParser;

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/mediakit/net/CustomHTTPDNS$1;->this$0:Lcom/bykv/vk/component/ttvideo/mediakit/net/CustomHTTPDNS;

    .line 35
    .line 36
    iget-object v2, v2, Lcom/bykv/vk/component/ttvideo/mediakit/net/BaseDNS;->mHostname:Ljava/lang/String;

    .line 37
    .line 38
    invoke-interface {v1, v2}, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLCustomHTTPDNSParser;->parseHost(Ljava/lang/String;)Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLCustomHTTPDNSParserResult;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const/4 v1, 0x0

    .line 44
    :goto_1
    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/mediakit/net/CustomHTTPDNS$1;->this$0:Lcom/bykv/vk/component/ttvideo/mediakit/net/CustomHTTPDNS;

    .line 45
    .line 46
    invoke-static {v2, v4}, Lcom/bykv/vk/component/ttvideo/mediakit/net/CustomHTTPDNS;->access$002(Lcom/bykv/vk/component/ttvideo/mediakit/net/CustomHTTPDNS;Z)Z

    .line 47
    .line 48
    .line 49
    if-eqz v1, :cond_4

    .line 50
    .line 51
    iget-object v2, v1, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLCustomHTTPDNSParserResult;->mIPList:Ljava/lang/String;

    .line 52
    .line 53
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_2

    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_2
    new-array v2, v0, [Ljava/lang/Object;

    .line 61
    .line 62
    sget v5, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLDNSParser;->mGlobalDefaultExpiredTime:I

    .line 63
    .line 64
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    aput-object v5, v2, v3

    .line 69
    .line 70
    sget v5, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLDNSParser;->mGlobalForceExpiredTime:I

    .line 71
    .line 72
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    aput-object v5, v2, v4

    .line 77
    .line 78
    const-string v5, "****default expiredtime:%d force expiredtime:%d "

    .line 79
    .line 80
    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    sget v2, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLDNSParser;->mGlobalForceExpiredTime:I

    .line 84
    .line 85
    if-lez v2, :cond_3

    .line 86
    .line 87
    int-to-long v5, v2

    .line 88
    goto :goto_2

    .line 89
    :cond_3
    iget-wide v5, v1, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLCustomHTTPDNSParserResult;->mTTL:J

    .line 90
    .line 91
    :goto_2
    new-instance v2, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLDNSInfo;

    .line 92
    .line 93
    const/4 v8, 0x4

    .line 94
    iget-object v7, p0, Lcom/bykv/vk/component/ttvideo/mediakit/net/CustomHTTPDNS$1;->this$0:Lcom/bykv/vk/component/ttvideo/mediakit/net/CustomHTTPDNS;

    .line 95
    .line 96
    iget-object v9, v7, Lcom/bykv/vk/component/ttvideo/mediakit/net/BaseDNS;->mHostname:Ljava/lang/String;

    .line 97
    .line 98
    iget-object v10, v1, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLCustomHTTPDNSParserResult;->mIPList:Ljava/lang/String;

    .line 99
    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 101
    .line 102
    .line 103
    move-result-wide v11

    .line 104
    const-wide/16 v13, 0x3e8

    .line 105
    .line 106
    mul-long v5, v5, v13

    .line 107
    .line 108
    add-long/2addr v11, v5

    .line 109
    iget-object v5, p0, Lcom/bykv/vk/component/ttvideo/mediakit/net/CustomHTTPDNS$1;->this$0:Lcom/bykv/vk/component/ttvideo/mediakit/net/CustomHTTPDNS;

    .line 110
    .line 111
    iget-object v13, v5, Lcom/bykv/vk/component/ttvideo/mediakit/net/BaseDNS;->mId:Ljava/lang/String;

    .line 112
    .line 113
    move-object v7, v2

    .line 114
    invoke-direct/range {v7 .. v13}, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLDNSInfo;-><init>(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-static {}, Lcom/bykv/vk/component/ttvideo/mediakit/net/IPCache;->getInstance()Lcom/bykv/vk/component/ttvideo/mediakit/net/IPCache;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    iget-object v6, p0, Lcom/bykv/vk/component/ttvideo/mediakit/net/CustomHTTPDNS$1;->this$0:Lcom/bykv/vk/component/ttvideo/mediakit/net/CustomHTTPDNS;

    .line 122
    .line 123
    iget-object v6, v6, Lcom/bykv/vk/component/ttvideo/mediakit/net/BaseDNS;->mHostname:Ljava/lang/String;

    .line 124
    .line 125
    invoke-virtual {v5, v6, v2}, Lcom/bykv/vk/component/ttvideo/mediakit/net/IPCache;->put(Ljava/lang/String;Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLDNSInfo;)V

    .line 126
    .line 127
    .line 128
    iget-object v5, p0, Lcom/bykv/vk/component/ttvideo/mediakit/net/CustomHTTPDNS$1;->this$0:Lcom/bykv/vk/component/ttvideo/mediakit/net/CustomHTTPDNS;

    .line 129
    .line 130
    invoke-virtual {v5, v2}, Lcom/bykv/vk/component/ttvideo/mediakit/net/BaseDNS;->notifySuccess(Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLDNSInfo;)V

    .line 131
    .line 132
    .line 133
    new-array v0, v0, [Ljava/lang/Object;

    .line 134
    .line 135
    iget-object v1, v1, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLCustomHTTPDNSParserResult;->mIPList:Ljava/lang/String;

    .line 136
    .line 137
    aput-object v1, v0, v3

    .line 138
    .line 139
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/mediakit/net/CustomHTTPDNS$1;->this$0:Lcom/bykv/vk/component/ttvideo/mediakit/net/CustomHTTPDNS;

    .line 140
    .line 141
    iget-object v1, v1, Lcom/bykv/vk/component/ttvideo/mediakit/net/BaseDNS;->mHostname:Ljava/lang/String;

    .line 142
    .line 143
    aput-object v1, v0, v4

    .line 144
    .line 145
    const-string v1, "****end call custom httpdns, suc iplist:%s host:%s"

    .line 146
    .line 147
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    return-void

    .line 151
    :cond_4
    :goto_3
    new-array v0, v4, [Ljava/lang/Object;

    .line 152
    .line 153
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/mediakit/net/CustomHTTPDNS$1;->this$0:Lcom/bykv/vk/component/ttvideo/mediakit/net/CustomHTTPDNS;

    .line 154
    .line 155
    iget-object v1, v1, Lcom/bykv/vk/component/ttvideo/mediakit/net/BaseDNS;->mHostname:Ljava/lang/String;

    .line 156
    .line 157
    aput-object v1, v0, v3

    .line 158
    .line 159
    const-string v1, "****end call custom httpdns, result null or iplist null host:%s"

    .line 160
    .line 161
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/mediakit/net/CustomHTTPDNS$1;->this$0:Lcom/bykv/vk/component/ttvideo/mediakit/net/CustomHTTPDNS;

    .line 165
    .line 166
    new-instance v8, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLDNSInfo;

    .line 167
    .line 168
    const/4 v2, 0x4

    .line 169
    iget-object v3, v0, Lcom/bykv/vk/component/ttvideo/mediakit/net/BaseDNS;->mHostname:Ljava/lang/String;

    .line 170
    .line 171
    const/4 v4, 0x0

    .line 172
    const-wide/16 v5, 0x0

    .line 173
    .line 174
    iget-object v7, v0, Lcom/bykv/vk/component/ttvideo/mediakit/net/BaseDNS;->mId:Ljava/lang/String;

    .line 175
    .line 176
    move-object v1, v8

    .line 177
    invoke-direct/range {v1 .. v7}, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLDNSInfo;-><init>(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0, v8}, Lcom/bykv/vk/component/ttvideo/mediakit/net/BaseDNS;->notifyError(Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLDNSInfo;)V

    .line 181
    .line 182
    .line 183
    return-void
.end method
