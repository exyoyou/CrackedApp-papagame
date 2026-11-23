.class final Lcom/zyyoona7/wheel/WheelView$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zyyoona7/wheel/WheelView;->T0(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/zyyoona7/wheel/WheelView;

.field final synthetic c:I


# direct methods
.method constructor <init>(Lcom/zyyoona7/wheel/WheelView;I)V
    .locals 0

    iput-object p1, p0, Lcom/zyyoona7/wheel/WheelView$c;->b:Lcom/zyyoona7/wheel/WheelView;

    iput p2, p0, Lcom/zyyoona7/wheel/WheelView$c;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/zyyoona7/wheel/WheelView$c;->b:Lcom/zyyoona7/wheel/WheelView;

    .line 2
    .line 3
    iget v1, p0, Lcom/zyyoona7/wheel/WheelView$c;->c:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2, v2}, Lcom/zyyoona7/wheel/WheelView;->setSelectedPosition(IZI)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
