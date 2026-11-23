.class public Lcom/join/mgps/receiver/SMSBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/receiver/SMSBroadcastReceiver$a;
    }
.end annotation


# static fields
.field private static a:Lcom/join/mgps/receiver/SMSBroadcastReceiver$a; = null

.field public static final b:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Lcom/join/mgps/receiver/SMSBroadcastReceiver$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messageListener"
        }
    .end annotation

    .line 1
    sput-object p1, Lcom/join/mgps/receiver/SMSBroadcastReceiver;->a:Lcom/join/mgps/receiver/SMSBroadcastReceiver$a;

    .line 2
    .line 3
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "intent"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "android.provider.Telephony.SMS_RECEIVED"

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string p2, "pdus"

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, [Ljava/lang/Object;

    .line 24
    .line 25
    array-length p2, p1

    .line 26
    const/4 v0, 0x0

    .line 27
    :goto_0
    if-ge v0, p2, :cond_0

    .line 28
    .line 29
    aget-object v1, p1, v0

    .line 30
    .line 31
    check-cast v1, [B

    .line 32
    .line 33
    invoke-static {v1}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    .line 45
    .line 46
    .line 47
    move-result-wide v3

    .line 48
    new-instance v1, Ljava/util/Date;

    .line 49
    .line 50
    invoke-direct {v1, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 51
    .line 52
    .line 53
    new-instance v3, Ljava/text/SimpleDateFormat;

    .line 54
    .line 55
    const-string v4, "yyyy-MM-dd HH:mm:ss"

    .line 56
    .line 57
    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    sget-object v1, Lcom/join/mgps/receiver/SMSBroadcastReceiver;->a:Lcom/join/mgps/receiver/SMSBroadcastReceiver$a;

    .line 64
    .line 65
    invoke-interface {v1, v2}, Lcom/join/mgps/receiver/SMSBroadcastReceiver$a;->a(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    add-int/lit8 v0, v0, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    return-void
.end method
