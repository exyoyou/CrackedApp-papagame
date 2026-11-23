.class public Lcom/kwai/monitor/oaid/OADIDSDKHelper$IIdentifierListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bun/miitmdid/interfaces/IIdentifierListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwai/monitor/oaid/OADIDSDKHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IIdentifierListenerImpl"
.end annotation


# instance fields
.field public final mOaidListener:Lcom/kwai/monitor/oaid/OADIDSDKHelper$a;

.field public final mStartTime:J


# direct methods
.method public constructor <init>(JLcom/kwai/monitor/oaid/OADIDSDKHelper$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/kwai/monitor/oaid/OADIDSDKHelper$IIdentifierListenerImpl;->mStartTime:J

    .line 5
    .line 6
    iput-object p3, p0, Lcom/kwai/monitor/oaid/OADIDSDKHelper$IIdentifierListenerImpl;->mOaidListener:Lcom/kwai/monitor/oaid/OADIDSDKHelper$a;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onSupport(Lcom/bun/miitmdid/interfaces/IdSupplier;)V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/kwai/monitor/oaid/OADIDSDKHelper$IIdentifierListenerImpl;->mStartTime:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    invoke-interface {p1}, Lcom/bun/miitmdid/interfaces/IdSupplier;->getOAID()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v3, "OADIDSDKHelper:oaid time="

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v0, "--OAID:"

    .line 34
    .line 35
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/kwai/monitor/oaid/OADIDSDKHelper$IIdentifierListenerImpl;->mOaidListener:Lcom/kwai/monitor/oaid/OADIDSDKHelper$a;

    .line 42
    .line 43
    check-cast v0, Lhc/a$a;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    sput-object p1, Lhc/a;->a:Ljava/lang/String;

    .line 49
    .line 50
    iget-object v0, v0, Lhc/a$a;->a:Landroid/content/Context;

    .line 51
    .line 52
    const-string v1, "ks_oaid"

    .line 53
    .line 54
    invoke-static {v0, v1, p1}, Lec/c;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-static {}, Lhc/a;->c()V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    const/4 p1, 0x1

    .line 62
    invoke-static {p1}, Lcom/kwai/monitor/oaid/OADIDSDKHelper;->a(Z)Z

    .line 63
    .line 64
    .line 65
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 66
    invoke-static {p1}, Lcom/kwai/monitor/oaid/OADIDSDKHelper;->b(Z)Z

    .line 67
    .line 68
    .line 69
    return-void
.end method
