.class Lcom/join/mgps/Util/g0$z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/Util/g0;->d0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/customview/t;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/join/mgps/Util/g0;


# direct methods
.method constructor <init>(Lcom/join/mgps/Util/g0;Lcom/join/mgps/customview/t;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$mDialog",
            "val$context",
            "val$qqkey",
            "val$qqqunS"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/g0$z;->f:Lcom/join/mgps/Util/g0;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/Util/g0$z;->b:Lcom/join/mgps/customview/t;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/Util/g0$z;->c:Landroid/content/Context;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/join/mgps/Util/g0$z;->d:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/join/mgps/Util/g0$z;->e:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
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
    iget-object p1, p0, Lcom/join/mgps/Util/g0$z;->b:Lcom/join/mgps/customview/t;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/mgps/Util/g0$z;->b:Lcom/join/mgps/customview/t;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/Util/g0$z;->c:Landroid/content/Context;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/join/android/app/common/utils/APKUtils;->M(Landroid/content/Context;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    const-string v0, "\u5df2\u590d\u5236Q\u7fa4\u53f7\uff0c\u82e5\u672a\u80fd\u8df3\u8f6c\u8bf7\u81ea\u884c\u6253\u5f00qq\u7c98\u8d34\u7fa4\u53f7"

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget-object v1, p0, Lcom/join/mgps/Util/g0$z;->c:Landroid/content/Context;

    .line 35
    .line 36
    iget-object v2, p0, Lcom/join/mgps/Util/g0$z;->d:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p1, v1, v2}, Lcom/join/mgps/Util/IntentUtil;->goQQGroup(Landroid/content/Context;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/join/mgps/Util/g0$z;->c:Landroid/content/Context;

    .line 42
    .line 43
    iget-object v1, p0, Lcom/join/mgps/Util/g0$z;->e:Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {p1, v1}, Lcom/join/mgps/Util/r0;->M(Landroid/content/Context;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/join/mgps/Util/g0$z;->c:Landroid/content/Context;

    .line 49
    .line 50
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/Util/g0$z;->c:Landroid/content/Context;

    .line 59
    .line 60
    iget-object v1, p0, Lcom/join/mgps/Util/g0$z;->e:Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {p1, v1}, Lcom/join/mgps/Util/r0;->M(Landroid/content/Context;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/join/mgps/Util/g0$z;->c:Landroid/content/Context;

    .line 66
    .line 67
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    :goto_0
    return-void
.end method
