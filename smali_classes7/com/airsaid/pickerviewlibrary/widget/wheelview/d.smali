.class final Lcom/airsaid/pickerviewlibrary/widget/wheelview/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final b:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;


# direct methods
.method constructor <init>(Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/d;->b:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/d;->b:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->e:Li/c;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->getCurrentItem()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-interface {v1, v0}, Li/c;->a(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
