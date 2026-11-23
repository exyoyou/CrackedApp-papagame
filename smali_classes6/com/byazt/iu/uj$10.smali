.class public Lcom/byazt/iu/uj$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/iu/uj$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x7f,
        0x35f
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/iu/uj;->n(Lcom/byazt/dj/tt;Lcom/byazt/iu/n;Lcom/byazt/ete/bm;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/iu/n;

.field public final synthetic tt:Lcom/byazt/iu/uj;


# direct methods
.method public constructor <init>(Lcom/byazt/iu/uj;Lcom/byazt/iu/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/iu/uj$10;->tt:Lcom/byazt/iu/uj;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/iu/uj$10;->c:Lcom/byazt/iu/n;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c(Z)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/byazt/iu/uj$10;->c:Lcom/byazt/iu/n;

    .line 4
    .line 5
    const/4 v0, -0x3

    .line 6
    const-string v1, "no cache"

    .line 7
    .line 8
    invoke-interface {p1, v0, v1}, Lcom/byazt/iu/n;->c(ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method
