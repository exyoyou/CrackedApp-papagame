.class public Lcom/sdk/p/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static c:Lcom/sdk/p/f;


# instance fields
.field public a:Lcom/sdk/q/a;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/sdk/t/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sdk/t/a;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sdk/p/f;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v1, "E"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    :pswitch_1
    const-string v1, "D"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :pswitch_2
    const-string v1, "C"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_1

    new-instance v0, Lcom/sdk/q/b;

    invoke-direct {v0}, Lcom/sdk/q/b;-><init>()V

    :goto_1
    iput-object v0, p0, Lcom/sdk/p/f;->a:Lcom/sdk/q/a;

    goto :goto_2

    :pswitch_3
    invoke-static {}, Lcom/sdk/base/module/manager/SDKManager;->isSupport_GM()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/sdk/q/c;

    invoke-direct {v0}, Lcom/sdk/q/c;-><init>()V

    goto :goto_1

    :cond_3
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x43
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public static a()Lcom/sdk/p/f;
    .locals 6

    .line 1
    sget-object v0, Lcom/sdk/p/f;->c:Lcom/sdk/p/f;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "SecurityPlan getInstance() \u5f00\u59cb "

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    new-instance v0, Lcom/sdk/p/f;

    .line 23
    .line 24
    invoke-direct {v0}, Lcom/sdk/p/f;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lcom/sdk/p/f;->c:Lcom/sdk/p/f;

    .line 28
    .line 29
    invoke-static {}, Lcom/sdk/base/module/manager/SDKManager;->isSupport_GM()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    const-string v0, "BC"

    .line 36
    .line 37
    invoke-static {v0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    invoke-static {v0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1}, Ljava/security/Provider;->getVersion()D

    .line 48
    .line 49
    .line 50
    move-result-wide v1

    .line 51
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 52
    .line 53
    invoke-virtual {v3, v1, v2}, Ljava/io/PrintStream;->println(D)V

    .line 54
    .line 55
    .line 56
    const-wide v3, 0x3ffb0a3d70a3d70aL    # 1.69

    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    cmpg-double v5, v1, v3

    .line 62
    .line 63
    if-gez v5, :cond_0

    .line 64
    .line 65
    invoke-static {v0}, Ljava/security/Security;->removeProvider(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :cond_0
    invoke-static {v0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    if-nez v1, :cond_1

    .line 73
    .line 74
    new-instance v1, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    .line 75
    .line 76
    invoke-direct {v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-static {v1}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    .line 80
    .line 81
    .line 82
    :cond_1
    invoke-static {v0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    if-eqz v1, :cond_2

    .line 87
    .line 88
    invoke-static {v0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v0}, Ljava/security/Provider;->getVersion()D

    .line 93
    .line 94
    .line 95
    move-result-wide v0

    .line 96
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 97
    .line 98
    invoke-virtual {v2, v0, v1}, Ljava/io/PrintStream;->println(D)V

    .line 99
    .line 100
    .line 101
    :cond_2
    sget-object v0, Lcom/sdk/p/f;->c:Lcom/sdk/p/f;

    .line 102
    .line 103
    return-object v0
.end method
