.class public Lcom/byazt/qe/tt$tt;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2b9,
        0xf0
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/qe/tt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "tt"
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/qe/tt;


# direct methods
.method private constructor <init>(Lcom/byazt/qe/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/qe/tt$tt;->c:Lcom/byazt/qe/tt;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/byazt/qe/tt;Lcom/byazt/qe/tt$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/byazt/qe/tt$tt;-><init>(Lcom/byazt/qe/tt;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lcom/byazt/omf/x;->d()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    const-string p1, "--==-- settings receiver"

    .line 16
    .line 17
    const-string v0, "SdkSettingsHelper"

    .line 18
    .line 19
    invoke-static {v0, p1}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string p1, "b_msg_id"

    .line 23
    .line 24
    const/4 v1, -0x1

    .line 25
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    const/4 v1, 0x1

    .line 30
    if-ne p1, v1, :cond_3

    .line 31
    .line 32
    const-string p1, "b_msg_process_name"

    .line 33
    .line 34
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iget-object p2, p0, Lcom/byazt/qe/tt$tt;->c:Lcom/byazt/qe/tt;

    .line 39
    .line 40
    invoke-static {p2}, Lcom/byazt/qe/tt;->ve(Lcom/byazt/qe/tt;)Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-static {p2}, Lcom/byazt/vx/gr;->tt(Landroid/content/Context;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_2

    .line 53
    .line 54
    const-string p1, "--==-- settings receiver, same process, return"

    .line 55
    .line 56
    invoke-static {v0, p1}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_2
    iget-object p1, p0, Lcom/byazt/qe/tt$tt;->c:Lcom/byazt/qe/tt;

    .line 61
    .line 62
    invoke-static {p1}, Lcom/byazt/qe/tt;->tt(Lcom/byazt/qe/tt;)Lcom/byazt/qe/c;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    if-eqz p1, :cond_3

    .line 67
    .line 68
    const-string p1, "--==-- settings receiver loadData"

    .line 69
    .line 70
    invoke-static {v0, p1}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lcom/byazt/qe/tt$tt;->c:Lcom/byazt/qe/tt;

    .line 74
    .line 75
    invoke-static {p1}, Lcom/byazt/qe/tt;->tt(Lcom/byazt/qe/tt;)Lcom/byazt/qe/c;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    const/4 p2, 0x0

    .line 80
    const/4 v1, 0x0

    .line 81
    invoke-interface {p1, p2, v1}, Lcom/byazt/qe/c;->c(ZLorg/json/JSONObject;)V

    .line 82
    .line 83
    .line 84
    invoke-static {}, Lcom/byazt/ck/uj;->c()Lcom/byazt/ck/uj;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p1}, Lcom/byazt/ck/uj;->tt()V

    .line 89
    .line 90
    .line 91
    const-string p1, "--==-- settings receiver loadData end"

    .line 92
    .line 93
    invoke-static {v0, p1}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    :cond_3
    return-void
.end method
