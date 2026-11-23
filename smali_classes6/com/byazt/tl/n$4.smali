.class public Lcom/byazt/tl/n$4;
.super Lcom/byazt/bwm/sp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1d3,
        0x1fa
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/tl/n;->c(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic tt:Ljava/lang/String;

.field public final synthetic ve:Lcom/byazt/tl/n;


# direct methods
.method public constructor <init>(Lcom/byazt/tl/n;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/tl/n$4;->ve:Lcom/byazt/tl/n;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/byazt/tl/n$4;->c:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/byazt/tl/n$4;->tt:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0, p2}, Lcom/byazt/bwm/sp;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/tl/n$4;->ve:Lcom/byazt/tl/n;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/tl/n$4;->c:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/byazt/tl/n$4;->tt:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/byazt/tl/n;->tt(Lcom/byazt/tl/n;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    const/4 v1, 0x1

    .line 13
    new-array v1, v1, [Ljava/lang/Object;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    aput-object v0, v1, v2

    .line 17
    .line 18
    const-string v0, "#oncall#"

    .line 19
    .line 20
    invoke-static {v0, v1}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
