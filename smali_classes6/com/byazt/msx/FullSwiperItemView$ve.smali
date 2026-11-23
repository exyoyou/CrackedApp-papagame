.class public Lcom/byazt/msx/FullSwiperItemView$ve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/zd/c$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x155,
        0x39a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/msx/FullSwiperItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ve"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/msx/FullSwiperItemView$ve$c;
    }
.end annotation


# instance fields
.field public final c:Lcom/byazt/zd/c$c;

.field public final n:Lcom/byazt/nr/d;

.field public final tt:Lcom/byazt/msx/FullSwiperItemView$ve$c;

.field public final uj:I

.field public ve:Z


# direct methods
.method public constructor <init>(Lcom/byazt/zd/c$c;ILcom/byazt/msx/FullSwiperItemView$ve$c;Lcom/byazt/nr/d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/byazt/msx/FullSwiperItemView$ve;->ve:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/byazt/msx/FullSwiperItemView$ve;->c:Lcom/byazt/zd/c$c;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/byazt/msx/FullSwiperItemView$ve;->tt:Lcom/byazt/msx/FullSwiperItemView$ve$c;

    .line 10
    .line 11
    iput p2, p0, Lcom/byazt/msx/FullSwiperItemView$ve;->uj:I

    .line 12
    .line 13
    iput-object p4, p0, Lcom/byazt/msx/FullSwiperItemView$ve;->n:Lcom/byazt/nr/d;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/byazt/msx/FullSwiperItemView$ve;->ve:Z

    .line 2
    iget-object v0, p0, Lcom/byazt/msx/FullSwiperItemView$ve;->c:Lcom/byazt/zd/c$c;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/byazt/zd/c$c;->c()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/byazt/msx/FullSwiperItemView$ve;->tt:Lcom/byazt/msx/FullSwiperItemView$ve$c;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Lcom/byazt/msx/FullSwiperItemView$ve$c;->c()V

    :cond_1
    return-void
.end method

.method public c(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/byazt/msx/FullSwiperItemView$ve;->ve:Z

    .line 7
    iget-object v0, p0, Lcom/byazt/msx/FullSwiperItemView$ve;->c:Lcom/byazt/zd/c$c;

    if-eqz v0, :cond_0

    .line 8
    invoke-interface {v0, p1, p2}, Lcom/byazt/zd/c$c;->c(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c(JJ)V
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/byazt/msx/FullSwiperItemView$ve;->n:Lcom/byazt/nr/d;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 10
    iget-object v0, p0, Lcom/byazt/msx/FullSwiperItemView$ve;->c:Lcom/byazt/zd/c$c;

    if-eqz v0, :cond_0

    .line 11
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/byazt/zd/c$c;->c(JJ)V

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/byazt/msx/FullSwiperItemView$ve;->tt:Lcom/byazt/msx/FullSwiperItemView$ve$c;

    if-eqz v0, :cond_1

    .line 13
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/byazt/msx/FullSwiperItemView$ve$c;->c(JJ)V

    :cond_1
    return-void
.end method

.method public tt()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/msx/FullSwiperItemView$ve;->c:Lcom/byazt/zd/c$c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/zd/c$c;->tt()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public ve()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/msx/FullSwiperItemView$ve;->c:Lcom/byazt/zd/c$c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/zd/c$c;->ve()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
