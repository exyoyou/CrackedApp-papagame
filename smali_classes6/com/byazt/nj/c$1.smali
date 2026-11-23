.class public Lcom/byazt/nj/c$1;
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
        0x1a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/nj/c;
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
    iput-object p1, p0, Lcom/byazt/nj/c$1;->c:Lcom/byazt/nj/c;

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
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const-string v2, "resumeVideo: run "

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    iget-object v1, p0, Lcom/byazt/nj/c$1;->c:Lcom/byazt/nj/c;

    .line 10
    .line 11
    iget-boolean v1, v1, Lcom/byazt/nj/c;->da:Z

    .line 12
    .line 13
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x1

    .line 18
    aput-object v1, v0, v2

    .line 19
    .line 20
    const-string v1, "BaseController"

    .line 21
    .line 22
    invoke-static {v1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/byazt/nj/c$1;->c:Lcom/byazt/nj/c;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/byazt/nj/c;->eo()V

    .line 28
    .line 29
    .line 30
    return-void
.end method
