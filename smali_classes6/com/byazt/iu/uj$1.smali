.class public Lcom/byazt/iu/uj$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x7f,
        0x63
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/iu/uj;->c(Lcom/byazt/dj/tt;Lcom/byazt/ete/bm;Lcom/byazt/iu/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/dj/tt;

.field public final synthetic tt:Lcom/byazt/ete/bm;

.field public final synthetic uj:Lcom/byazt/iu/uj;

.field public final synthetic ve:Lcom/byazt/iu/n;


# direct methods
.method public constructor <init>(Lcom/byazt/iu/uj;Lcom/byazt/dj/tt;Lcom/byazt/ete/bm;Lcom/byazt/iu/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/iu/uj$1;->uj:Lcom/byazt/iu/uj;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/iu/uj$1;->c:Lcom/byazt/dj/tt;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/iu/uj$1;->tt:Lcom/byazt/ete/bm;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/iu/uj$1;->ve:Lcom/byazt/iu/n;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/iu/uj$1;->uj:Lcom/byazt/iu/uj;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/iu/uj$1;->c:Lcom/byazt/dj/tt;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/byazt/iu/uj$1;->tt:Lcom/byazt/ete/bm;

    .line 6
    .line 7
    new-instance v3, Lcom/byazt/iu/a;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/byazt/iu/uj$1;->ve:Lcom/byazt/iu/n;

    .line 10
    .line 11
    invoke-direct {v3, v4}, Lcom/byazt/iu/a;-><init>(Lcom/byazt/iu/n;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1, v2, v3}, Lcom/byazt/iu/uj;->c(Lcom/byazt/iu/uj;Lcom/byazt/dj/tt;Lcom/byazt/ete/bm;Lcom/byazt/iu/n;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
