.class public Lcom/byazt/dqg/n$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/omf/EmptyView$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x4a,
        0x202
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/dqg/n;->c(Lcom/byazt/ouz/a;Lcom/byazt/ouz/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/dqg/n;


# direct methods
.method public constructor <init>(Lcom/byazt/dqg/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/dqg/n$2;->c:Lcom/byazt/dqg/n;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/byazt/dqg/n$2;->c:Lcom/byazt/dqg/n;

    iget-object v0, v0, Lcom/byazt/dqg/n;->c:Lcom/byazt/pop/ve;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Lcom/byazt/pop/ve;->c()V

    :cond_0
    return-void
.end method

.method public c(Landroid/view/View;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/dqg/n$2;->c:Lcom/byazt/dqg/n;

    iget-object v0, v0, Lcom/byazt/dqg/n;->c:Lcom/byazt/pop/ve;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/byazt/pop/ve;->tt()V

    :cond_0
    return-void
.end method

.method public tt()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/dqg/n$2;->c:Lcom/byazt/dqg/n;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/dqg/n;->c:Lcom/byazt/pop/ve;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/byazt/pop/ve;->ve()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
