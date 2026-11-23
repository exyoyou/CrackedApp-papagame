.class public Lcom/byazt/ab/tt$2;
.super Lcom/byazt/bwm/sp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2f5,
        0x5c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ab/tt;->uj(Lcom/byazt/ete/ic;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ete/ic;

.field public final synthetic tt:Ljava/lang/String;

.field public final synthetic ve:Lcom/byazt/ab/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/ab/tt;Ljava/lang/String;Lcom/byazt/ete/ic;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ab/tt$2;->ve:Lcom/byazt/ab/tt;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/byazt/ab/tt$2;->c:Lcom/byazt/ete/ic;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/byazt/ab/tt$2;->tt:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/byazt/ab/tt$2;->ve:Lcom/byazt/ab/tt;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/ab/tt$2;->c:Lcom/byazt/ete/ic;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/byazt/ab/tt$2;->tt:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/byazt/ab/tt;->c(Lcom/byazt/ab/tt;Lcom/byazt/ete/ic;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    :catchall_0
    return-void
.end method
