.class public Lcom/byazt/kft/tt$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x118,
        0x1c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/kft/tt;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic tt:Lcom/byazt/kft/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/kft/tt;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/kft/tt$1;->tt:Lcom/byazt/kft/tt;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/kft/tt$1;->c:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/byazt/cph/tt;->c()Lcom/byazt/cph/tt;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/byazt/kft/tt$1;->c:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/byazt/cph/tt;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    const-string v1, "UpieVideoPlayer"

    .line 18
    .line 19
    const-string v2, "--==-- lottie use cache ok"

    .line 20
    .line 21
    invoke-static {v1, v2}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/byazt/kft/tt$1;->tt:Lcom/byazt/kft/tt;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/byazt/kft/tt$1;->c:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v1, v0, v2}, Lcom/byazt/kft/tt;->c(Lcom/byazt/kft/tt;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    invoke-static {}, Lcom/byazt/cph/tt;->c()Lcom/byazt/cph/tt;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/byazt/kft/tt$1;->c:Ljava/lang/String;

    .line 37
    .line 38
    new-instance v2, Lcom/byazt/kft/tt$1$1;

    .line 39
    .line 40
    invoke-direct {v2, p0}, Lcom/byazt/kft/tt$1$1;-><init>(Lcom/byazt/kft/tt$1;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1, v2}, Lcom/byazt/cph/tt;->c(Ljava/lang/String;Lcom/byazt/cph/tt$c;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method
