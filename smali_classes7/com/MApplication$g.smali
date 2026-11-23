.class Lcom/MApplication$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/android/app/common/http/MiitHelper$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/MApplication;->B()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/MApplication;


# direct methods
.method constructor <init>(Lcom/MApplication;)V
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
    iput-object p1, p0, Lcom/MApplication$g;->a:Lcom/MApplication;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ids"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string p1, ""

    .line 8
    .line 9
    :cond_0
    sput-object p1, Lcom/MApplication;->L:Ljava/lang/String;

    .line 10
    .line 11
    sget-object p1, Lcom/MApplication;->z:Lcom/MApplication;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/papa/sim/statistic/u;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/u;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    sget-object v0, Lcom/MApplication;->L:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/u;->w(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-instance p1, Ljava/lang/Thread;

    .line 23
    .line 24
    new-instance v0, Lcom/MApplication$g$a;

    .line 25
    .line 26
    invoke-direct {v0, p0}, Lcom/MApplication$g$a;-><init>(Lcom/MApplication$g;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 33
    .line 34
    .line 35
    return-void
.end method
