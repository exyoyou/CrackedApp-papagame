.class public Lcom/byazt/oq/FlowLightView$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x10d,
        0x8ee
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/oq/FlowLightView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final c:I

.field public tt:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/byazt/oq/FlowLightView$c;->c:I

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/byazt/oq/FlowLightView$c;->tt:I

    .line 8
    .line 9
    return-void
.end method

.method public static synthetic c(Lcom/byazt/oq/FlowLightView$c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/oq/FlowLightView$c;->tt:I

    return p0
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 2
    iget v0, p0, Lcom/byazt/oq/FlowLightView$c;->tt:I

    iget v1, p0, Lcom/byazt/oq/FlowLightView$c;->c:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/byazt/oq/FlowLightView$c;->tt:I

    return-void
.end method
