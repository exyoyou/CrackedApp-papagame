.class public Lcom/byazt/iu/uj$4;
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
        0x65
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/iu/uj;->c(Lcom/byazt/dj/tt;Lcom/byazt/ete/bm;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/dj/tt;

.field public final synthetic tt:Lcom/byazt/ete/bm;

.field public final synthetic ve:Lcom/byazt/iu/uj;


# direct methods
.method public constructor <init>(Lcom/byazt/iu/uj;Lcom/byazt/dj/tt;Lcom/byazt/ete/bm;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/iu/uj$4;->ve:Lcom/byazt/iu/uj;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/iu/uj$4;->c:Lcom/byazt/dj/tt;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/iu/uj$4;->tt:Lcom/byazt/ete/bm;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/iu/uj$4;->c:Lcom/byazt/dj/tt;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/dj/tt;->gt()I

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/byazt/iu/uj$4;->ve:Lcom/byazt/iu/uj;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/byazt/iu/uj$4;->c:Lcom/byazt/dj/tt;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    iget-object v3, p0, Lcom/byazt/iu/uj$4;->tt:Lcom/byazt/ete/bm;

    .line 12
    .line 13
    invoke-static {v0, v1, v2, v3, v2}, Lcom/byazt/iu/uj;->c(Lcom/byazt/iu/uj;Lcom/byazt/dj/tt;Lcom/byazt/iu/n;Lcom/byazt/ete/bm;Lcom/byazt/iuu/tt;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
