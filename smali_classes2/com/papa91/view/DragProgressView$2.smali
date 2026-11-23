.class Lcom/papa91/view/DragProgressView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/papa91/view/RoundedRectangularProgressView$OnProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/view/DragProgressView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/view/DragProgressView;


# direct methods
.method constructor <init>(Lcom/papa91/view/DragProgressView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/view/DragProgressView$2;->this$0:Lcom/papa91/view/DragProgressView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onProgress(F[F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa91/view/DragProgressView$2;->this$0:Lcom/papa91/view/DragProgressView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/papa91/view/DragProgressView;->access$100(Lcom/papa91/view/DragProgressView;)Landroid/widget/ImageView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_5

    .line 12
    .line 13
    if-nez p2, :cond_0

    .line 14
    .line 15
    goto/16 :goto_1

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/papa91/view/DragProgressView$2;->this$0:Lcom/papa91/view/DragProgressView;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/papa91/view/DragProgressView;->access$200(Lcom/papa91/view/DragProgressView;)Lcom/papa91/view/RoundedRectangularProgressView;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    int-to-float v0, v0

    .line 28
    const/4 v1, 0x0

    .line 29
    aget v1, p2, v1

    .line 30
    .line 31
    add-float/2addr v0, v1

    .line 32
    iget-object v1, p0, Lcom/papa91/view/DragProgressView$2;->this$0:Lcom/papa91/view/DragProgressView;

    .line 33
    .line 34
    invoke-static {v1}, Lcom/papa91/view/DragProgressView;->access$100(Lcom/papa91/view/DragProgressView;)Landroid/widget/ImageView;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    div-int/lit8 v1, v1, 0x2

    .line 43
    .line 44
    int-to-float v1, v1

    .line 45
    sub-float/2addr v0, v1

    .line 46
    float-to-int v0, v0

    .line 47
    iget-object v1, p0, Lcom/papa91/view/DragProgressView$2;->this$0:Lcom/papa91/view/DragProgressView;

    .line 48
    .line 49
    invoke-static {v1}, Lcom/papa91/view/DragProgressView;->access$200(Lcom/papa91/view/DragProgressView;)Lcom/papa91/view/RoundedRectangularProgressView;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    int-to-float v1, v1

    .line 58
    const/4 v2, 0x1

    .line 59
    aget p2, p2, v2

    .line 60
    .line 61
    add-float/2addr v1, p2

    .line 62
    iget-object p2, p0, Lcom/papa91/view/DragProgressView$2;->this$0:Lcom/papa91/view/DragProgressView;

    .line 63
    .line 64
    invoke-static {p2}, Lcom/papa91/view/DragProgressView;->access$100(Lcom/papa91/view/DragProgressView;)Landroid/widget/ImageView;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 69
    .line 70
    .line 71
    move-result p2

    .line 72
    div-int/lit8 p2, p2, 0x2

    .line 73
    .line 74
    int-to-float p2, p2

    .line 75
    sub-float/2addr v1, p2

    .line 76
    float-to-int p2, v1

    .line 77
    iget-object v1, p0, Lcom/papa91/view/DragProgressView$2;->this$0:Lcom/papa91/view/DragProgressView;

    .line 78
    .line 79
    invoke-static {v1}, Lcom/papa91/view/DragProgressView;->access$100(Lcom/papa91/view/DragProgressView;)Landroid/widget/ImageView;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    int-to-float v0, v0

    .line 84
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lcom/papa91/view/DragProgressView$2;->this$0:Lcom/papa91/view/DragProgressView;

    .line 88
    .line 89
    invoke-static {v0}, Lcom/papa91/view/DragProgressView;->access$100(Lcom/papa91/view/DragProgressView;)Landroid/widget/ImageView;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    int-to-float p2, p2

    .line 94
    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 95
    .line 96
    .line 97
    iget-object p2, p0, Lcom/papa91/view/DragProgressView$2;->this$0:Lcom/papa91/view/DragProgressView;

    .line 98
    .line 99
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    if-eqz p2, :cond_1

    .line 104
    .line 105
    iget-object p2, p0, Lcom/papa91/view/DragProgressView$2;->this$0:Lcom/papa91/view/DragProgressView;

    .line 106
    .line 107
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    check-cast p2, Landroid/view/View;

    .line 112
    .line 113
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    const/4 v1, -0x1

    .line 118
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 119
    .line 120
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 125
    .line 126
    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    .line 127
    .line 128
    .line 129
    :cond_1
    const/high16 p2, 0x3f800000    # 1.0f

    .line 130
    .line 131
    cmpl-float p1, p1, p2

    .line 132
    .line 133
    if-ltz p1, :cond_4

    .line 134
    .line 135
    iget-object p1, p0, Lcom/papa91/view/DragProgressView$2;->this$0:Lcom/papa91/view/DragProgressView;

    .line 136
    .line 137
    iget-object p1, p1, Lcom/papa91/view/DragProgressView;->mOnProduceListener:Lcom/papa91/view/DragProgressView$OnProduceListener;

    .line 138
    .line 139
    if-eqz p1, :cond_2

    .line 140
    .line 141
    invoke-interface {p1}, Lcom/papa91/view/DragProgressView$OnProduceListener;->onProduce()V

    .line 142
    .line 143
    .line 144
    :cond_2
    iget-object p1, p0, Lcom/papa91/view/DragProgressView$2;->this$0:Lcom/papa91/view/DragProgressView;

    .line 145
    .line 146
    invoke-static {p1}, Lcom/papa91/view/DragProgressView;->access$300(Lcom/papa91/view/DragProgressView;)I

    .line 147
    .line 148
    .line 149
    move-result p2

    .line 150
    add-int/2addr p2, v2

    .line 151
    invoke-virtual {p1, p2}, Lcom/papa91/view/DragProgressView;->setSignal(I)V

    .line 152
    .line 153
    .line 154
    iget-object p1, p0, Lcom/papa91/view/DragProgressView$2;->this$0:Lcom/papa91/view/DragProgressView;

    .line 155
    .line 156
    invoke-static {p1}, Lcom/papa91/view/DragProgressView;->access$300(Lcom/papa91/view/DragProgressView;)I

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    iget-object p2, p0, Lcom/papa91/view/DragProgressView$2;->this$0:Lcom/papa91/view/DragProgressView;

    .line 161
    .line 162
    invoke-static {p2}, Lcom/papa91/view/DragProgressView;->access$400(Lcom/papa91/view/DragProgressView;)I

    .line 163
    .line 164
    .line 165
    move-result p2

    .line 166
    if-ge p1, p2, :cond_3

    .line 167
    .line 168
    iget-object p1, p0, Lcom/papa91/view/DragProgressView$2;->this$0:Lcom/papa91/view/DragProgressView;

    .line 169
    .line 170
    invoke-virtual {p1}, Lcom/papa91/view/DragProgressView;->start()V

    .line 171
    .line 172
    .line 173
    goto :goto_0

    .line 174
    :cond_3
    iget-object p1, p0, Lcom/papa91/view/DragProgressView$2;->this$0:Lcom/papa91/view/DragProgressView;

    .line 175
    .line 176
    invoke-virtual {p1}, Lcom/papa91/view/DragProgressView;->stop()V

    .line 177
    .line 178
    .line 179
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/papa91/view/DragProgressView$2;->this$0:Lcom/papa91/view/DragProgressView;

    .line 180
    .line 181
    invoke-virtual {p1}, Lcom/papa91/view/DragProgressView;->requestLayout()V

    .line 182
    .line 183
    .line 184
    :cond_5
    :goto_1
    return-void
.end method
