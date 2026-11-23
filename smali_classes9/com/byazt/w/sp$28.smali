.class public final Lcom/byazt/w/sp$28;
.super Lcom/byazt/c/rl$c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3f9,
        0x71a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/w/sp;->c(Lcom/byazt/c/gu;)Lcom/byazt/c/rl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/c/gu;


# direct methods
.method public constructor <init>(Lcom/byazt/c/gu;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/w/sp$28;->c:Lcom/byazt/c/gu;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/byazt/c/rl$c;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/c/gt;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/w/sp$28;->c:Lcom/byazt/c/gu;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/byazt/w/sp;->c(Lcom/byazt/c/gt;)Lcom/byazt/c/qy;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Lcom/byazt/c/gu;->c(Lcom/byazt/c/qy;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method
