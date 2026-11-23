.class Lcom/join/android/app/common/dialog/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/common/dialog/d;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/android/app/common/dialog/d;


# direct methods
.method constructor <init>(Lcom/join/android/app/common/dialog/d;)V
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
    iput-object p1, p0, Lcom/join/android/app/common/dialog/d$b;->b:Lcom/join/android/app/common/dialog/d;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/android/app/common/dialog/d$b;->b:Lcom/join/android/app/common/dialog/d;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/android/app/common/dialog/d$b;->b:Lcom/join/android/app/common/dialog/d;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/join/android/app/common/dialog/d;->a(Lcom/join/android/app/common/dialog/d;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/join/android/app/common/dialog/d$b;->b:Lcom/join/android/app/common/dialog/d;

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    invoke-static {p1, v0}, Lcom/join/android/app/common/dialog/d;->b(Lcom/join/android/app/common/dialog/d;Z)Z

    .line 19
    .line 20
    .line 21
    sput-boolean v0, Lcom/MApplication;->Z:Z

    .line 22
    .line 23
    new-instance p1, Lcom/join/android/app/common/utils/n;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/android/app/common/dialog/d$b;->b:Lcom/join/android/app/common/dialog/d;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/join/android/app/common/dialog/d;->c(Lcom/join/android/app/common/dialog/d;)Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-direct {p1, v0}, Lcom/join/android/app/common/utils/n;-><init>(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/join/android/app/common/utils/n;->n()V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/join/android/app/common/dialog/d$b;->b:Lcom/join/android/app/common/dialog/d;

    .line 38
    .line 39
    invoke-static {p1}, Lcom/join/android/app/common/dialog/d;->c(Lcom/join/android/app/common/dialog/d;)Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iget-object v0, p0, Lcom/join/android/app/common/dialog/d$b;->b:Lcom/join/android/app/common/dialog/d;

    .line 48
    .line 49
    invoke-static {v0}, Lcom/join/android/app/common/dialog/d;->c(Lcom/join/android/app/common/dialog/d;)Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const-string v1, "clickAuthButton"

    .line 62
    .line 63
    const-string v2, "0"

    .line 64
    .line 65
    invoke-virtual {p1, v1, v2, v0}, Lcom/papa/sim/statistic/t;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lcom/join/android/app/common/dialog/d$b;->b:Lcom/join/android/app/common/dialog/d;

    .line 69
    .line 70
    invoke-static {p1}, Lcom/join/android/app/common/dialog/d;->c(Lcom/join/android/app/common/dialog/d;)Landroid/content/Context;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-static {p1, v1}, Lcom/join/kotlin/utils/extention/MobclickAgentKt;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    return-void
.end method
