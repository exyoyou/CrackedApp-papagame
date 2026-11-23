.class public Lcom/byazt/tjs/uj$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/kj/c$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x4b9,
        0x67
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/tjs/uj;->c(Landroid/content/Context;Ljava/lang/String;Lcom/byazt/tjs/tt;)Landroid/webkit/WebResourceResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/util/Pair;

.field public final synthetic c:Lcom/byazt/kj/c;

.field public final synthetic n:Landroid/util/Pair;

.field public final synthetic sp:Lcom/byazt/tjs/uj;

.field public final synthetic tt:Landroid/content/Context;

.field public final synthetic uj:Lcom/byazt/tjs/tt;

.field public final synthetic ve:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/byazt/tjs/uj;Lcom/byazt/kj/c;Landroid/content/Context;Ljava/lang/String;Lcom/byazt/tjs/tt;Landroid/util/Pair;Landroid/util/Pair;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/tjs/uj$3;->sp:Lcom/byazt/tjs/uj;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/tjs/uj$3;->c:Lcom/byazt/kj/c;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/tjs/uj$3;->tt:Landroid/content/Context;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/tjs/uj$3;->ve:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/byazt/tjs/uj$3;->uj:Lcom/byazt/tjs/tt;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/byazt/tjs/uj$3;->n:Landroid/util/Pair;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/byazt/tjs/uj$3;->a:Landroid/util/Pair;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public c(ZLjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/byazt/tjs/uj$3;->sp:Lcom/byazt/tjs/uj;

    .line 4
    .line 5
    new-instance v0, Lcom/byazt/tjs/uj$3$1;

    .line 6
    .line 7
    invoke-direct {v0, p0, p2}, Lcom/byazt/tjs/uj$3$1;-><init>(Lcom/byazt/tjs/uj$3;Ljava/util/Map;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lcom/byazt/tjs/uj;->c(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method
