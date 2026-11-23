.class Lcom/wf/transfer/ui/MainActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wf/transfer/ui/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/wf/transfer/ui/MainActivity;


# direct methods
.method constructor <init>(Lcom/wf/transfer/ui/MainActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wf/transfer/ui/MainActivity$1;->a:Lcom/wf/transfer/ui/MainActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    const-string p1, "activityName"

    .line 2
    .line 3
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wf/transfer/ui/MainActivity$1;->a:Lcom/wf/transfer/ui/MainActivity;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/wf/transfer/ui/MainActivity;->a(Lcom/wf/transfer/ui/MainActivity;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-direct {p2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    new-instance p2, Landroid/content/Intent;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/wf/transfer/ui/MainActivity$1;->a:Lcom/wf/transfer/ui/MainActivity;

    .line 27
    .line 28
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-direct {p2, v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 33
    .line 34
    .line 35
    const/high16 p1, 0x10000000

    .line 36
    .line 37
    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    const-string p1, "jsonData"

    .line 41
    .line 42
    iget-object v0, p0, Lcom/wf/transfer/ui/MainActivity$1;->a:Lcom/wf/transfer/ui/MainActivity;

    .line 43
    .line 44
    invoke-static {v0}, Lcom/wf/transfer/ui/MainActivity;->a(Lcom/wf/transfer/ui/MainActivity;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/wf/transfer/ui/MainActivity$1;->a:Lcom/wf/transfer/ui/MainActivity;

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catch_0
    move-exception p1

    .line 58
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 59
    .line 60
    .line 61
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/wf/transfer/ui/MainActivity$1;->a:Lcom/wf/transfer/ui/MainActivity;

    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 64
    .line 65
    .line 66
    return-void
.end method
