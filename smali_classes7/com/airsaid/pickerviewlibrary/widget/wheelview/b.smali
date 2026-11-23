.class final Lcom/airsaid/pickerviewlibrary/widget/wheelview/b;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field final b:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;


# direct methods
.method constructor <init>(Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/b;->b:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/b;->b:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 2
    .line 3
    invoke-virtual {p1, p4}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->l(F)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    return p1
.end method
