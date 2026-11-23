.class public abstract Lcom/byakv/q/YogaNodeJNIBase;
.super Lcom/byazt/bj/da;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation build Lcom/byazt/bx/c;
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public arr:[F
    .annotation build Lcom/byazt/bx/c;
    .end annotation
.end field

.field public c:J

.field public mLayoutDirection:I
    .annotation build Lcom/byazt/bx/c;
    .end annotation
.end field

.field public n:Lcom/byazt/bj/tt;

.field public sp:Z

.field public tt:Lcom/byakv/q/YogaNodeJNIBase;

.field public uj:Lcom/byazt/bj/sp;

.field public ve:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byakv/q/YogaNodeJNIBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 7
    invoke-static {}, Lcom/byakv/q/YogaNative;->jni_YGNodeNewJNI()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/byakv/q/YogaNodeJNIBase;-><init>(J)V

    return-void
.end method

.method private constructor <init>(J)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/byazt/bj/da;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/byakv/q/YogaNodeJNIBase;->arr:[F

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/byakv/q/YogaNodeJNIBase;->mLayoutDirection:I

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/byakv/q/YogaNodeJNIBase;->sp:Z

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 5
    iput-wide p1, p0, Lcom/byakv/q/YogaNodeJNIBase;->c:J

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Failed to allocate native memory"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final replaceChild(Lcom/byakv/q/YogaNodeJNIBase;I)J
    .locals 1
    .annotation build Lcom/byazt/bx/c;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byakv/q/YogaNodeJNIBase;->ve:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/byakv/q/YogaNodeJNIBase;->ve:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iput-object p0, p1, Lcom/byakv/q/YogaNodeJNIBase;->tt:Lcom/byakv/q/YogaNodeJNIBase;

    .line 14
    .line 15
    iget-wide p1, p1, Lcom/byakv/q/YogaNodeJNIBase;->c:J

    .line 16
    .line 17
    return-wide p1

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    const-string p2, "Cannot replace child. YogaNode does not have children"

    .line 21
    .line 22
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1
.end method


# virtual methods
.method public a()F
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byakv/q/YogaNodeJNIBase;->arr:[F

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    aget v0, v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public a(F)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byakv/q/YogaNodeJNIBase;->c:J

    invoke-static {v0, v1, p1}, Lcom/byakv/q/YogaNative;->jni_YGNodeStyleSetHeightJNI(JF)V

    return-void
.end method

.method public final baseline(FF)F
    .locals 1
    .annotation build Lcom/byazt/bx/c;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byakv/q/YogaNodeJNIBase;->n:Lcom/byazt/bj/tt;

    .line 2
    .line 3
    invoke-interface {v0, p0, p1, p2}, Lcom/byazt/bj/tt;->c(Lcom/byazt/bj/da;FF)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public c()I
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byakv/q/YogaNodeJNIBase;->ve:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public c(Lcom/byazt/bj/da;)I
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/byakv/q/YogaNodeJNIBase;->ve:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public synthetic c(I)Lcom/byazt/bj/da;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/byakv/q/YogaNodeJNIBase;->ve(I)Lcom/byakv/q/YogaNodeJNIBase;

    move-result-object p1

    return-object p1
.end method

.method public c(F)V
    .locals 2

    .line 31
    iget-wide v0, p0, Lcom/byakv/q/YogaNodeJNIBase;->c:J

    invoke-static {v0, v1, p1}, Lcom/byakv/q/YogaNative;->jni_YGNodeStyleSetFlexGrowJNI(JF)V

    return-void
.end method

.method public c(FF)V
    .locals 8

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 15
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 16
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/byakv/q/YogaNodeJNIBase;

    .line 17
    iget-object v3, v3, Lcom/byakv/q/YogaNodeJNIBase;->ve:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 18
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/byakv/q/YogaNodeJNIBase;

    .line 19
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/byakv/q/YogaNodeJNIBase;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, [Lcom/byakv/q/YogaNodeJNIBase;

    .line 21
    array-length v0, v7

    new-array v6, v0, [J

    .line 22
    :goto_2
    array-length v0, v7

    if-ge v1, v0, :cond_2

    .line 23
    aget-object v0, v7, v1

    iget-wide v2, v0, Lcom/byakv/q/YogaNodeJNIBase;->c:J

    aput-wide v2, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 24
    :cond_2
    iget-wide v2, p0, Lcom/byakv/q/YogaNodeJNIBase;->c:J

    move v4, p1

    move v5, p2

    invoke-static/range {v2 .. v7}, Lcom/byakv/q/YogaNative;->jni_YGNodeCalculateLayoutJNI(JFF[J[Lcom/byakv/q/YogaNodeJNIBase;)V

    return-void
.end method

.method public c(Lcom/byazt/bj/a;)V
    .locals 2

    .line 27
    iget-wide v0, p0, Lcom/byakv/q/YogaNodeJNIBase;->c:J

    invoke-virtual {p1}, Lcom/byazt/bj/a;->c()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/byakv/q/YogaNative;->jni_YGNodeStyleSetJustifyContentJNI(JI)V

    return-void
.end method

.method public c(Lcom/byazt/bj/c;)V
    .locals 2

    .line 28
    iget-wide v0, p0, Lcom/byakv/q/YogaNodeJNIBase;->c:J

    invoke-virtual {p1}, Lcom/byazt/bj/c;->c()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/byakv/q/YogaNative;->jni_YGNodeStyleSetAlignItemsJNI(JI)V

    return-void
.end method

.method public c(Lcom/byazt/bj/da;I)V
    .locals 4

    .line 3
    instance-of v0, p1, Lcom/byakv/q/YogaNodeJNIBase;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    check-cast p1, Lcom/byakv/q/YogaNodeJNIBase;

    .line 5
    iget-object v0, p1, Lcom/byakv/q/YogaNodeJNIBase;->tt:Lcom/byakv/q/YogaNodeJNIBase;

    if-nez v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/byakv/q/YogaNodeJNIBase;->ve:Ljava/util/List;

    if-nez v0, :cond_1

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/byakv/q/YogaNodeJNIBase;->ve:Ljava/util/List;

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/byakv/q/YogaNodeJNIBase;->ve:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 9
    iput-object p0, p1, Lcom/byakv/q/YogaNodeJNIBase;->tt:Lcom/byakv/q/YogaNodeJNIBase;

    .line 10
    iget-wide v0, p0, Lcom/byakv/q/YogaNodeJNIBase;->c:J

    iget-wide v2, p1, Lcom/byakv/q/YogaNodeJNIBase;->c:J

    invoke-static {v0, v1, v2, v3, p2}, Lcom/byakv/q/YogaNative;->jni_YGNodeInsertChildJNI(JJI)V

    return-void

    .line 11
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Child already has a parent, it must be removed first."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Lcom/byazt/bj/n;)V
    .locals 2

    .line 26
    iget-wide v0, p0, Lcom/byakv/q/YogaNodeJNIBase;->c:J

    invoke-virtual {p1}, Lcom/byazt/bj/n;->c()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/byakv/q/YogaNative;->jni_YGNodeStyleSetFlexDirectionJNI(JI)V

    return-void
.end method

.method public c(Lcom/byazt/bj/sp;)V
    .locals 2

    .line 33
    iput-object p1, p0, Lcom/byakv/q/YogaNodeJNIBase;->uj:Lcom/byazt/bj/sp;

    .line 34
    iget-wide v0, p0, Lcom/byakv/q/YogaNodeJNIBase;->c:J

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, v1, p1}, Lcom/byakv/q/YogaNative;->jni_YGNodeSetHasMeasureFuncJNI(JZ)V

    return-void
.end method

.method public c(Lcom/byazt/bj/u;)V
    .locals 2

    .line 29
    iget-wide v0, p0, Lcom/byakv/q/YogaNodeJNIBase;->c:J

    invoke-virtual {p1}, Lcom/byazt/bj/u;->c()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/byakv/q/YogaNative;->jni_YGNodeStyleSetPositionTypeJNI(JI)V

    return-void
.end method

.method public c(Lcom/byazt/bj/uj;F)V
    .locals 2

    .line 32
    iget-wide v0, p0, Lcom/byakv/q/YogaNodeJNIBase;->c:J

    invoke-virtual {p1}, Lcom/byazt/bj/uj;->c()I

    move-result p1

    invoke-static {v0, v1, p1, p2}, Lcom/byakv/q/YogaNative;->jni_YGNodeStyleSetMarginJNI(JIF)V

    return-void
.end method

.method public c(Lcom/byazt/bj/ve;)V
    .locals 2

    .line 25
    iget-wide v0, p0, Lcom/byakv/q/YogaNodeJNIBase;->c:J

    invoke-virtual {p1}, Lcom/byazt/bj/ve;->c()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/byakv/q/YogaNative;->jni_YGNodeStyleSetDirectionJNI(JI)V

    return-void
.end method

.method public c(Lcom/byazt/bj/yp;)V
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/byakv/q/YogaNodeJNIBase;->c:J

    invoke-virtual {p1}, Lcom/byazt/bj/yp;->c()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/byakv/q/YogaNative;->jni_YGNodeStyleSetFlexWrapJNI(JI)V

    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/byakv/q/YogaNodeJNIBase;->a:Ljava/lang/Object;

    return-void
.end method

.method public c(Z)V
    .locals 2

    .line 35
    iget-wide v0, p0, Lcom/byakv/q/YogaNodeJNIBase;->c:J

    invoke-static {v0, v1, p1}, Lcom/byakv/q/YogaNative;->jni_YGNodeSetAlwaysFormsContainingBlockJNI(JZ)V

    return-void
.end method

.method public da()Ljava/lang/Object;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byakv/q/YogaNodeJNIBase;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public da(F)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byakv/q/YogaNodeJNIBase;->c:J

    invoke-static {v0, v1, p1}, Lcom/byakv/q/YogaNative;->jni_YGNodeStyleSetMaxWidthJNI(JF)V

    return-void
.end method

.method public i()F
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byakv/q/YogaNodeJNIBase;->arr:[F

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public i(F)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byakv/q/YogaNodeJNIBase;->c:J

    invoke-static {v0, v1, p1}, Lcom/byakv/q/YogaNative;->jni_YGNodeStyleSetMinHeightJNI(JF)V

    return-void
.end method

.method public final measure(FIFI)J
    .locals 7
    .annotation build Lcom/byazt/bx/c;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/byakv/q/YogaNodeJNIBase;->t()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lcom/byakv/q/YogaNodeJNIBase;->uj:Lcom/byazt/bj/sp;

    .line 8
    .line 9
    invoke-static {p2}, Lcom/byazt/bj/x;->c(I)Lcom/byazt/bj/x;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    invoke-static {p4}, Lcom/byazt/bj/x;->c(I)Lcom/byazt/bj/x;

    .line 14
    .line 15
    .line 16
    move-result-object v6

    .line 17
    move-object v2, p0

    .line 18
    move v3, p1

    .line 19
    move v5, p3

    .line 20
    invoke-interface/range {v1 .. v6}, Lcom/byazt/bj/sp;->c(Lcom/byazt/bj/da;FLcom/byazt/bj/x;FLcom/byazt/bj/x;)J

    .line 21
    .line 22
    .line 23
    move-result-wide p1

    .line 24
    return-wide p1

    .line 25
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 26
    .line 27
    const-string p2, "Measure function isn\'t defined!"

    .line 28
    .line 29
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p1
.end method

.method public n()V
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/byakv/q/YogaNodeJNIBase;->c:J

    invoke-static {v0, v1}, Lcom/byakv/q/YogaNative;->jni_YGNodeStyleSetHeightAutoJNI(J)V

    return-void
.end method

.method public n(F)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byakv/q/YogaNodeJNIBase;->c:J

    invoke-static {v0, v1, p1}, Lcom/byakv/q/YogaNative;->jni_YGNodeStyleSetWidthPercentJNI(JF)V

    return-void
.end method

.method public sl()Lcom/byakv/q/YogaNodeJNIBase;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byakv/q/YogaNodeJNIBase;->tt:Lcom/byakv/q/YogaNodeJNIBase;

    return-object v0
.end method

.method public sl(F)V
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/byakv/q/YogaNodeJNIBase;->c:J

    invoke-static {v0, v1, p1}, Lcom/byakv/q/YogaNative;->jni_YGNodeStyleSetMaxHeightJNI(JF)V

    return-void
.end method

.method public sp()F
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byakv/q/YogaNodeJNIBase;->arr:[F

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    aget v0, v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public sp(F)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byakv/q/YogaNodeJNIBase;->c:J

    invoke-static {v0, v1, p1}, Lcom/byakv/q/YogaNative;->jni_YGNodeStyleSetHeightPercentJNI(JF)V

    return-void
.end method

.method public t(F)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byakv/q/YogaNodeJNIBase;->c:J

    invoke-static {v0, v1, p1}, Lcom/byakv/q/YogaNative;->jni_YGNodeStyleSetAspectRatioJNI(JF)V

    return-void
.end method

.method public t()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byakv/q/YogaNodeJNIBase;->uj:Lcom/byazt/bj/sp;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic tt()Lcom/byazt/bj/da;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/byakv/q/YogaNodeJNIBase;->sl()Lcom/byakv/q/YogaNodeJNIBase;

    move-result-object v0

    return-object v0
.end method

.method public synthetic tt(I)Lcom/byazt/bj/da;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/byakv/q/YogaNodeJNIBase;->uj(I)Lcom/byakv/q/YogaNodeJNIBase;

    move-result-object p1

    return-object p1
.end method

.method public tt(F)V
    .locals 2

    .line 4
    iget-wide v0, p0, Lcom/byakv/q/YogaNodeJNIBase;->c:J

    invoke-static {v0, v1, p1}, Lcom/byakv/q/YogaNative;->jni_YGNodeStyleSetFlexShrinkJNI(JF)V

    return-void
.end method

.method public tt(Lcom/byazt/bj/c;)V
    .locals 2

    .line 3
    iget-wide v0, p0, Lcom/byakv/q/YogaNodeJNIBase;->c:J

    invoke-virtual {p1}, Lcom/byazt/bj/c;->c()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/byakv/q/YogaNative;->jni_YGNodeStyleSetAlignSelfJNI(JI)V

    return-void
.end method

.method public tt(Lcom/byazt/bj/uj;F)V
    .locals 2

    .line 5
    iget-wide v0, p0, Lcom/byakv/q/YogaNodeJNIBase;->c:J

    invoke-virtual {p1}, Lcom/byazt/bj/uj;->c()I

    move-result p1

    invoke-static {v0, v1, p1, p2}, Lcom/byakv/q/YogaNative;->jni_YGNodeStyleSetPaddingJNI(JIF)V

    return-void
.end method

.method public uj(I)Lcom/byakv/q/YogaNodeJNIBase;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byakv/q/YogaNodeJNIBase;->ve:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byakv/q/YogaNodeJNIBase;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p1, Lcom/byakv/q/YogaNodeJNIBase;->tt:Lcom/byakv/q/YogaNodeJNIBase;

    .line 4
    iget-wide v0, p0, Lcom/byakv/q/YogaNodeJNIBase;->c:J

    iget-wide v2, p1, Lcom/byakv/q/YogaNodeJNIBase;->c:J

    invoke-static {v0, v1, v2, v3}, Lcom/byakv/q/YogaNative;->jni_YGNodeRemoveChildJNI(JJ)V

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Trying to remove a child of a YogaNode that does not have children"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public uj()V
    .locals 2

    .line 7
    iget-wide v0, p0, Lcom/byakv/q/YogaNodeJNIBase;->c:J

    invoke-static {v0, v1}, Lcom/byakv/q/YogaNative;->jni_YGNodeStyleSetWidthAutoJNI(J)V

    return-void
.end method

.method public uj(F)V
    .locals 2

    .line 6
    iget-wide v0, p0, Lcom/byakv/q/YogaNodeJNIBase;->c:J

    invoke-static {v0, v1, p1}, Lcom/byakv/q/YogaNative;->jni_YGNodeStyleSetWidthJNI(JF)V

    return-void
.end method

.method public ve(I)Lcom/byakv/q/YogaNodeJNIBase;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byakv/q/YogaNodeJNIBase;->ve:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byakv/q/YogaNodeJNIBase;

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "YogaNode does not have children"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ve()V
    .locals 2

    .line 6
    iget-wide v0, p0, Lcom/byakv/q/YogaNodeJNIBase;->c:J

    invoke-static {v0, v1}, Lcom/byakv/q/YogaNative;->jni_YGNodeStyleSetFlexBasisAutoJNI(J)V

    return-void
.end method

.method public ve(F)V
    .locals 2

    .line 5
    iget-wide v0, p0, Lcom/byakv/q/YogaNodeJNIBase;->c:J

    invoke-static {v0, v1, p1}, Lcom/byakv/q/YogaNative;->jni_YGNodeStyleSetFlexBasisJNI(JF)V

    return-void
.end method

.method public ve(Lcom/byazt/bj/c;)V
    .locals 2

    .line 4
    iget-wide v0, p0, Lcom/byakv/q/YogaNodeJNIBase;->c:J

    invoke-virtual {p1}, Lcom/byazt/bj/c;->c()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/byakv/q/YogaNative;->jni_YGNodeStyleSetAlignContentJNI(JI)V

    return-void
.end method

.method public ve(Lcom/byazt/bj/uj;F)V
    .locals 2

    .line 7
    iget-wide v0, p0, Lcom/byakv/q/YogaNodeJNIBase;->c:J

    invoke-virtual {p1}, Lcom/byazt/bj/uj;->c()I

    move-result p1

    invoke-static {v0, v1, p1, p2}, Lcom/byakv/q/YogaNative;->jni_YGNodeStyleSetPositionJNI(JIF)V

    return-void
.end method

.method public x()F
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byakv/q/YogaNodeJNIBase;->arr:[F

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public x(F)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byakv/q/YogaNodeJNIBase;->c:J

    invoke-static {v0, v1, p1}, Lcom/byakv/q/YogaNative;->jni_YGNodeStyleSetMinWidthJNI(JF)V

    return-void
.end method
