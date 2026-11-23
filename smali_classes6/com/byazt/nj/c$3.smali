.class public Lcom/byazt/nj/c$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x6ef,
        0x5d
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/nj/c;->eo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/nj/c;


# direct methods
.method public constructor <init>(Lcom/byazt/nj/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/nj/c$3;->c:Lcom/byazt/nj/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/nj/c$3;->c:Lcom/byazt/nj/c;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    new-array v1, v1, [Ljava/lang/Object;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const-string v3, "resumeVideo: execResumePlay"

    .line 12
    .line 13
    aput-object v3, v1, v2

    .line 14
    .line 15
    iget-boolean v0, v0, Lcom/byazt/nj/c;->da:Z

    .line 16
    .line 17
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/4 v2, 0x1

    .line 22
    aput-object v0, v1, v2

    .line 23
    .line 24
    const-string v0, "BaseController"

    .line 25
    .line 26
    invoke-static {v0, v1}, Lcom/byazt/nr/m;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/byazt/nj/c$3;->c:Lcom/byazt/nj/c;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    .line 32
    .line 33
    invoke-interface {v0}, Lcom/byazt/fk/sp;->play()V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method
