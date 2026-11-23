.class public Lcom/byazt/iu/uj$9;
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
        0x76
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/iu/uj;->ve(Lcom/byazt/dj/tt;Lcom/byazt/iu/n;Lcom/byazt/ete/bm;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/iuu/ve;

.field public final synthetic tt:Lcom/byazt/iu/uj;


# direct methods
.method public constructor <init>(Lcom/byazt/iu/uj;Lcom/byazt/iuu/ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/iu/uj$9;->tt:Lcom/byazt/iu/uj;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/iu/uj$9;->c:Lcom/byazt/iuu/ve;

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
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/byazt/iu/uj$9;->c:Lcom/byazt/iuu/ve;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Lcom/byazt/iuu/ve;->c(Z)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method
