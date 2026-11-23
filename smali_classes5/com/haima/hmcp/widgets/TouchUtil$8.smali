.class Lcom/haima/hmcp/widgets/TouchUtil$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/widgets/TouchUtil;->sendMouseMoveGyroscopeSplit(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/widgets/TouchUtil;

.field final synthetic val$offsetXPerStep:I

.field final synthetic val$offsetYPerStep:I

.field final synthetic val$remainingOffsetX:I

.field final synthetic val$remainingOffsetY:I

.field final synthetic val$splitCount:I

.field final synthetic val$stepIndex:I


# direct methods
.method constructor <init>(Lcom/haima/hmcp/widgets/TouchUtil;IIIIII)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/widgets/TouchUtil$8;->this$0:Lcom/haima/hmcp/widgets/TouchUtil;

    .line 2
    .line 3
    iput p2, p0, Lcom/haima/hmcp/widgets/TouchUtil$8;->val$offsetXPerStep:I

    .line 4
    .line 5
    iput p3, p0, Lcom/haima/hmcp/widgets/TouchUtil$8;->val$offsetYPerStep:I

    .line 6
    .line 7
    iput p4, p0, Lcom/haima/hmcp/widgets/TouchUtil$8;->val$stepIndex:I

    .line 8
    .line 9
    iput p5, p0, Lcom/haima/hmcp/widgets/TouchUtil$8;->val$splitCount:I

    .line 10
    .line 11
    iput p6, p0, Lcom/haima/hmcp/widgets/TouchUtil$8;->val$remainingOffsetX:I

    .line 12
    .line 13
    iput p7, p0, Lcom/haima/hmcp/widgets/TouchUtil$8;->val$remainingOffsetY:I

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    iget v0, p0, Lcom/haima/hmcp/widgets/TouchUtil$8;->val$offsetXPerStep:I

    .line 2
    .line 3
    iget v1, p0, Lcom/haima/hmcp/widgets/TouchUtil$8;->val$offsetYPerStep:I

    .line 4
    .line 5
    iget v2, p0, Lcom/haima/hmcp/widgets/TouchUtil$8;->val$stepIndex:I

    .line 6
    .line 7
    iget v3, p0, Lcom/haima/hmcp/widgets/TouchUtil$8;->val$splitCount:I

    .line 8
    .line 9
    add-int/lit8 v3, v3, -0x1

    .line 10
    .line 11
    if-ne v2, v3, :cond_0

    .line 12
    .line 13
    iget v2, p0, Lcom/haima/hmcp/widgets/TouchUtil$8;->val$remainingOffsetX:I

    .line 14
    .line 15
    add-int/2addr v0, v2

    .line 16
    iget v2, p0, Lcom/haima/hmcp/widgets/TouchUtil$8;->val$remainingOffsetY:I

    .line 17
    .line 18
    add-int/2addr v1, v2

    .line 19
    :cond_0
    move v5, v0

    .line 20
    move v6, v1

    .line 21
    iget-object v2, p0, Lcom/haima/hmcp/widgets/TouchUtil$8;->this$0:Lcom/haima/hmcp/widgets/TouchUtil;

    .line 22
    .line 23
    invoke-static {v2}, Lcom/haima/hmcp/widgets/TouchUtil;->access$700(Lcom/haima/hmcp/widgets/TouchUtil;)Landroid/graphics/Point;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget v3, v0, Landroid/graphics/Point;->x:I

    .line 28
    .line 29
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil$8;->this$0:Lcom/haima/hmcp/widgets/TouchUtil;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/haima/hmcp/widgets/TouchUtil;->access$700(Lcom/haima/hmcp/widgets/TouchUtil;)Landroid/graphics/Point;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget v4, v0, Landroid/graphics/Point;->y:I

    .line 36
    .line 37
    const/4 v7, 0x0

    .line 38
    const/4 v8, 0x0

    .line 39
    invoke-virtual/range {v2 .. v8}, Lcom/haima/hmcp/widgets/TouchUtil;->sendAbsMouseEvent(IIIIZZ)V

    .line 40
    .line 41
    .line 42
    return-void
.end method
