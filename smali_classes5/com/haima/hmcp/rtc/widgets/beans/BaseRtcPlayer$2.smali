.class Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->setRenderView(Lcom/haima/hmcp/rtc/widgets/IRenderView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;

.field final synthetic val$renderUIView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$2;->this$0:Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$2;->val$renderUIView:Landroid/view/View;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$2;->val$renderUIView:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$2;->this$0:Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->access$000(Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$2;->val$renderUIView:Landroid/view/View;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v2, 0x1

    .line 23
    if-eq v0, v1, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$2;->this$0:Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$2;->val$renderUIView:Landroid/view/View;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-static {v0, v1}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->access$002(Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;I)I

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v0, 0x0

    .line 39
    :goto_0
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$2;->this$0:Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;

    .line 40
    .line 41
    invoke-static {v1}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->access$100(Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    iget-object v3, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$2;->val$renderUIView:Landroid/view/View;

    .line 46
    .line 47
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eq v1, v3, :cond_1

    .line 52
    .line 53
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$2;->this$0:Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;

    .line 54
    .line 55
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$2;->val$renderUIView:Landroid/view/View;

    .line 56
    .line 57
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    invoke-static {v0, v1}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->access$102(Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;I)I

    .line 62
    .line 63
    .line 64
    const/4 v0, 0x1

    .line 65
    :cond_1
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$2;->this$0:Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;

    .line 66
    .line 67
    invoke-static {v1}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->access$200(Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;)I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    iget-object v3, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$2;->val$renderUIView:Landroid/view/View;

    .line 72
    .line 73
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-eq v1, v3, :cond_2

    .line 78
    .line 79
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$2;->this$0:Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;

    .line 80
    .line 81
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$2;->val$renderUIView:Landroid/view/View;

    .line 82
    .line 83
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    invoke-static {v0, v1}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->access$202(Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;I)I

    .line 88
    .line 89
    .line 90
    const/4 v0, 0x1

    .line 91
    :cond_2
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$2;->this$0:Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;

    .line 92
    .line 93
    invoke-static {v1}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->access$300(Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;)I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    iget-object v3, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$2;->val$renderUIView:Landroid/view/View;

    .line 98
    .line 99
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    if-eq v1, v3, :cond_3

    .line 104
    .line 105
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$2;->this$0:Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;

    .line 106
    .line 107
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$2;->val$renderUIView:Landroid/view/View;

    .line 108
    .line 109
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    invoke-static {v0, v1}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->access$302(Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;I)I

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_3
    move v2, v0

    .line 118
    :goto_1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$2;->this$0:Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;

    .line 119
    .line 120
    iget-object v0, v0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mRenderView:Lcom/haima/hmcp/rtc/widgets/IRenderView;

    .line 121
    .line 122
    instance-of v0, v0, Lcom/haima/hmcp/rtc/widgets/RtcSurfaceViewRenderer;

    .line 123
    .line 124
    if-eqz v0, :cond_4

    .line 125
    .line 126
    const-string v0, "Surface "

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_4
    const-string v0, "Texture "

    .line 130
    .line 131
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string v0, "RenderView size: measuredWidth="

    .line 140
    .line 141
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$2;->this$0:Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;

    .line 145
    .line 146
    invoke-static {v0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->access$000(Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;)I

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v0, ", measuredHeight="

    .line 154
    .line 155
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$2;->this$0:Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;

    .line 159
    .line 160
    invoke-static {v0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->access$100(Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;)I

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    const-string v0, ", width="

    .line 168
    .line 169
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$2;->this$0:Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;

    .line 173
    .line 174
    invoke-static {v0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->access$200(Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;)I

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    const-string v0, ", height="

    .line 182
    .line 183
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$2;->this$0:Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;

    .line 187
    .line 188
    invoke-static {v0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->access$300(Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;)I

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    if-eqz v2, :cond_5

    .line 200
    .line 201
    const-string v1, "13423"

    .line 202
    .line 203
    invoke-static {v1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    :cond_5
    invoke-static {}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->access$400()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    return-void
.end method
