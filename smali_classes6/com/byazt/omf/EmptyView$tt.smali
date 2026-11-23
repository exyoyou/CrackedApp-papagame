.class public final Lcom/byazt/omf/EmptyView$tt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/omf/EmptyView$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1f,
        0x7a8
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/omf/EmptyView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "tt"
.end annotation


# instance fields
.field public final c:Lcom/byazt/omf/EmptyView$c;


# direct methods
.method public constructor <init>(Lcom/byazt/omf/EmptyView$c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/omf/EmptyView$tt;->c:Lcom/byazt/omf/EmptyView$c;

    .line 5
    .line 6
    return-void
.end method

.method public static synthetic c(Lcom/byazt/omf/EmptyView$tt;)Lcom/byazt/omf/EmptyView$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/omf/EmptyView$tt;->c:Lcom/byazt/omf/EmptyView$c;

    return-object p0
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/byazt/omf/EmptyView$tt;->c:Lcom/byazt/omf/EmptyView$c;

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Lcom/byazt/omf/EmptyView$tt$2;

    invoke-direct {v0, p0}, Lcom/byazt/omf/EmptyView$tt$2;-><init>(Lcom/byazt/omf/EmptyView$tt;)V

    invoke-static {v0}, Lcom/byazt/bzd/x;->c(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public c(Landroid/view/View;Ljava/util/Map;)V
    .locals 1
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

    .line 6
    iget-object v0, p0, Lcom/byazt/omf/EmptyView$tt;->c:Lcom/byazt/omf/EmptyView$c;

    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Lcom/byazt/omf/EmptyView$tt$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/byazt/omf/EmptyView$tt$4;-><init>(Lcom/byazt/omf/EmptyView$tt;Landroid/view/View;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/byazt/bzd/x;->c(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/omf/EmptyView$tt;->c:Lcom/byazt/omf/EmptyView$c;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/byazt/omf/EmptyView$tt$1;

    invoke-direct {v0, p0, p1}, Lcom/byazt/omf/EmptyView$tt$1;-><init>(Lcom/byazt/omf/EmptyView$tt;Z)V

    invoke-static {v0}, Lcom/byazt/bzd/x;->c(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public tt()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/omf/EmptyView$tt;->c:Lcom/byazt/omf/EmptyView$c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/byazt/omf/EmptyView$tt$3;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/byazt/omf/EmptyView$tt$3;-><init>(Lcom/byazt/omf/EmptyView$tt;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcom/byazt/bzd/x;->c(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method
