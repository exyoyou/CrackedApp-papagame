.class Lcn/sharesdk/framework/a/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mob/tools/utils/DH$DHResponder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/framework/a/a;->a(Lcn/sharesdk/framework/ShareSDKCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/framework/ShareSDKCallback;

.field final synthetic b:Lcn/sharesdk/framework/a/a;


# direct methods
.method constructor <init>(Lcn/sharesdk/framework/a/a;Lcn/sharesdk/framework/ShareSDKCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/sharesdk/framework/a/a$1;->b:Lcn/sharesdk/framework/a/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcn/sharesdk/framework/a/a$1;->a:Lcn/sharesdk/framework/ShareSDKCallback;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mob/tools/utils/DH$DHResponse;)V
    .locals 7

    .line 1
    const-string v0, "res"

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p1}, Lcom/mob/tools/utils/DH$DHResponse;->getNetworkType()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v1, "none"

    .line 8
    .line 9
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_3

    .line 14
    .line 15
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    iget-object p1, p0, Lcn/sharesdk/framework/a/a$1;->b:Lcn/sharesdk/framework/a/a;

    .line 23
    .line 24
    invoke-static {p1}, Lcn/sharesdk/framework/a/a;->a(Lcn/sharesdk/framework/a/a;)Lcn/sharesdk/framework/a/a/e;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Lcn/sharesdk/framework/a/a/e;->j()Ljava/lang/Long;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 33
    .line 34
    .line 35
    move-result-wide v1

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 37
    .line 38
    .line 39
    move-result-wide v3

    .line 40
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 45
    .line 46
    .line 47
    const/4 v5, 0x5

    .line 48
    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    invoke-virtual {p1, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    sub-long/2addr v3, v1

    .line 60
    const-wide/32 v1, 0x5265c00

    .line 61
    .line 62
    .line 63
    cmp-long v5, v3, v1

    .line 64
    .line 65
    if-ltz v5, :cond_2

    .line 66
    .line 67
    if-eq v6, p1, :cond_2

    .line 68
    .line 69
    iget-object p1, p0, Lcn/sharesdk/framework/a/a$1;->b:Lcn/sharesdk/framework/a/a;

    .line 70
    .line 71
    invoke-static {p1}, Lcn/sharesdk/framework/a/a;->b(Lcn/sharesdk/framework/a/a;)Lcn/sharesdk/framework/a/c;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p1}, Lcn/sharesdk/framework/a/c;->a()Ljava/util/HashMap;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_1

    .line 84
    .line 85
    const-string v1, "true"

    .line 86
    .line 87
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    goto :goto_0

    .line 100
    :cond_1
    const/4 v0, 0x1

    .line 101
    :goto_0
    iget-object v1, p0, Lcn/sharesdk/framework/a/a$1;->b:Lcn/sharesdk/framework/a/a;

    .line 102
    .line 103
    invoke-static {v1}, Lcn/sharesdk/framework/a/a;->a(Lcn/sharesdk/framework/a/a;)Lcn/sharesdk/framework/a/a/e;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/a/a/e;->c(Z)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    if-lez p1, :cond_2

    .line 115
    .line 116
    iget-object p1, p0, Lcn/sharesdk/framework/a/a$1;->b:Lcn/sharesdk/framework/a/a;

    .line 117
    .line 118
    invoke-static {p1}, Lcn/sharesdk/framework/a/a;->a(Lcn/sharesdk/framework/a/a;)Lcn/sharesdk/framework/a/a/e;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 123
    .line 124
    .line 125
    move-result-wide v0

    .line 126
    invoke-virtual {p1, v0, v1}, Lcn/sharesdk/framework/a/a/e;->b(J)V

    .line 127
    .line 128
    .line 129
    :cond_2
    iget-object p1, p0, Lcn/sharesdk/framework/a/a$1;->a:Lcn/sharesdk/framework/ShareSDKCallback;

    .line 130
    .line 131
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 132
    .line 133
    invoke-interface {p1, v0}, Lcn/sharesdk/framework/ShareSDKCallback;->onCallback(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_3
    :goto_1
    return-void

    .line 138
    :catchall_0
    move-exception p1

    .line 139
    iget-object v0, p0, Lcn/sharesdk/framework/a/a$1;->a:Lcn/sharesdk/framework/ShareSDKCallback;

    .line 140
    .line 141
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 142
    .line 143
    invoke-interface {v0, v1}, Lcn/sharesdk/framework/ShareSDKCallback;->onCallback(Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    .line 151
    .line 152
    .line 153
    :goto_2
    return-void
.end method
