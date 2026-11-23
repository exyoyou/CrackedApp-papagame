.class Lcom/join/mgps/activity/SplashActivity$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/shake/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/SplashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/SplashActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/SplashActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/SplashActivity$k;->a:Lcom/join/mgps/activity/SplashActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity$k;->a:Lcom/join/mgps/activity/SplashActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/SplashActivity;->l(Lcom/join/mgps/activity/SplashActivity;)Landroid/os/Vibrator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x2

    .line 8
    new-array v1, v1, [J

    .line 9
    .line 10
    fill-array-data v1, :array_0

    .line 11
    .line 12
    .line 13
    const/4 v2, -0x1

    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity$k;->a:Lcom/join/mgps/activity/SplashActivity;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/join/mgps/activity/SplashActivity;->m(Lcom/join/mgps/activity/SplashActivity;)Lcom/join/mgps/shake/a;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/join/mgps/shake/a;->e()V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity$k;->a:Lcom/join/mgps/activity/SplashActivity;

    .line 27
    .line 28
    iget-object v1, v0, Lcom/join/mgps/activity/SplashActivity;->T:Lcom/join/mgps/dto/ShowViewDataBean;

    .line 29
    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    iget-object v2, v0, Lcom/join/mgps/activity/SplashActivity;->U:Lcom/join/mgps/dto/SplashIntentBean;

    .line 33
    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    const-string v3, "2"

    .line 37
    .line 38
    invoke-static {v0, v1, v2, v3}, Lcom/join/mgps/activity/SplashActivity;->n(Lcom/join/mgps/activity/SplashActivity;Lcom/join/mgps/dto/ShowViewDataBean;Lcom/join/mgps/dto/SplashIntentBean;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/activity/SplashActivity;->c0()V

    .line 43
    .line 44
    .line 45
    :goto_0
    return-void

    .line 46
    nop

    .line 47
    :array_0
    .array-data 8
        0x12c
        0x1f4
    .end array-data
.end method
