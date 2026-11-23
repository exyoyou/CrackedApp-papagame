.class Lcom/join/mgps/dialog/l0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/dialog/l0;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dialog/l0;


# direct methods
.method constructor <init>(Lcom/join/mgps/dialog/l0;)V
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
    iput-object p1, p0, Lcom/join/mgps/dialog/l0$b;->b:Lcom/join/mgps/dialog/l0;

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
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/dialog/l0$b;->b:Lcom/join/mgps/dialog/l0;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/dialog/l0;->c(Lcom/join/mgps/dialog/l0;)Lcom/join/mgps/dialog/l0$d;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/join/mgps/dialog/l0$b;->b:Lcom/join/mgps/dialog/l0;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/join/mgps/dialog/l0;->b(Lcom/join/mgps/dialog/l0;)Lcom/join/mgps/dto/Filepath;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {p1, v0}, Lcom/join/mgps/dialog/l0$d;->a(Lcom/join/mgps/dto/Filepath;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/dialog/l0$b;->b:Lcom/join/mgps/dialog/l0;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/join/mgps/dialog/l0;->b(Lcom/join/mgps/dialog/l0;)Lcom/join/mgps/dto/Filepath;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lcom/join/mgps/dto/Filepath;->getAvailable()J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    const-wide/32 v2, 0xa00000

    .line 27
    .line 28
    .line 29
    cmp-long p1, v0, v2

    .line 30
    .line 31
    if-gez p1, :cond_0

    .line 32
    .line 33
    iget-object p1, p0, Lcom/join/mgps/dialog/l0$b;->b:Lcom/join/mgps/dialog/l0;

    .line 34
    .line 35
    invoke-static {p1}, Lcom/join/mgps/dialog/l0;->a(Lcom/join/mgps/dialog/l0;)Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const-string v0, "\u5b58\u50a8\u7a7a\u95f4\u5c0f\u4e8e10M\u53ef\u80fd\u5b58\u50a8\u7a7a\u95f4\u4e0d\u8db3"

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/dialog/l0$b;->b:Lcom/join/mgps/dialog/l0;

    .line 49
    .line 50
    invoke-static {p1}, Lcom/join/mgps/dialog/l0;->a(Lcom/join/mgps/dialog/l0;)Landroid/content/Context;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-static {p1}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iget-object v0, p0, Lcom/join/mgps/dialog/l0$b;->b:Lcom/join/mgps/dialog/l0;

    .line 59
    .line 60
    invoke-static {v0}, Lcom/join/mgps/dialog/l0;->d(Lcom/join/mgps/dialog/l0;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {p1, v0}, Lcom/join/mgps/pref/h;->V(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catch_0
    move-exception p1

    .line 69
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 70
    .line 71
    .line 72
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/dialog/l0$b;->b:Lcom/join/mgps/dialog/l0;

    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 75
    .line 76
    .line 77
    return-void
.end method
