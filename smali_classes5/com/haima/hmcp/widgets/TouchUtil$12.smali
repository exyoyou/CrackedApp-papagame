.class Lcom/haima/hmcp/widgets/TouchUtil$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/model/MouseAnimateModel$MouseAnimateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/widgets/TouchUtil;->enablePointIconAnimate(Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/widgets/TouchUtil;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/widgets/TouchUtil;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/widgets/TouchUtil$12;->this$0:Lcom/haima/hmcp/widgets/TouchUtil;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    .line 4
    const/16 v2, 0x16

    .line 5
    .line 6
    if-ge v1, v2, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lcom/haima/hmcp/business/ResourceManager;->getInstance()Lcom/haima/hmcp/business/ResourceManager;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lcom/haima/hmcp/business/ResourceManager;->getResources()Landroid/content/res/Resources;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-static {}, Lcom/haima/hmcp/business/ResourceManager;->getInstance()Lcom/haima/hmcp/business/ResourceManager;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lcom/haima/hmcp/business/ResourceManager;->getResources()Landroid/content/res/Resources;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1, p1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 30
    .line 31
    .line 32
    move-result-object p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :goto_0
    move-object v0, p1

    .line 34
    goto :goto_1

    .line 35
    :catch_0
    move-exception p1

    .line 36
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :goto_1
    return-object v0
.end method


# virtual methods
.method public onMouseFrame(I)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/haima/hmcp/widgets/TouchUtil;->access$800()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "onMouseFrame: "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 26
    .line 27
    const/16 v1, 0x1a

    .line 28
    .line 29
    if-lt v0, v1, :cond_3

    .line 30
    .line 31
    invoke-direct {p0, p1}, Lcom/haima/hmcp/widgets/TouchUtil$12;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-nez p1, :cond_0

    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil$12;->this$0:Lcom/haima/hmcp/widgets/TouchUtil;

    .line 45
    .line 46
    invoke-static {v0}, Lcom/haima/hmcp/widgets/TouchUtil;->access$500(Lcom/haima/hmcp/widgets/TouchUtil;)Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget v0, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mCursorWidth:I

    .line 51
    .line 52
    iget-object v1, p0, Lcom/haima/hmcp/widgets/TouchUtil$12;->this$0:Lcom/haima/hmcp/widgets/TouchUtil;

    .line 53
    .line 54
    invoke-static {v1}, Lcom/haima/hmcp/widgets/TouchUtil;->access$500(Lcom/haima/hmcp/widgets/TouchUtil;)Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    iget v1, v1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mCursorHeight:I

    .line 59
    .line 60
    const/4 v2, 0x1

    .line 61
    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil$12;->this$0:Lcom/haima/hmcp/widgets/TouchUtil;

    .line 66
    .line 67
    invoke-static {v0}, Lcom/haima/hmcp/widgets/TouchUtil;->access$500(Lcom/haima/hmcp/widgets/TouchUtil;)Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/haima/hmcp/widgets/TouchUtil$12;->this$0:Lcom/haima/hmcp/widgets/TouchUtil;

    .line 72
    .line 73
    invoke-static {v1}, Lcom/haima/hmcp/widgets/TouchUtil;->access$1100(Lcom/haima/hmcp/widgets/TouchUtil;)F

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    invoke-static {v1, p1, v2}, Lcom/haima/hmcp/widgets/TouchUtil;->access$1200(Lcom/haima/hmcp/widgets/TouchUtil;Landroid/graphics/Bitmap;F)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_1

    .line 82
    .line 83
    iget-object v1, p0, Lcom/haima/hmcp/widgets/TouchUtil$12;->this$0:Lcom/haima/hmcp/widgets/TouchUtil;

    .line 84
    .line 85
    invoke-static {v1, p1}, Lcom/haima/hmcp/widgets/TouchUtil;->access$1300(Lcom/haima/hmcp/widgets/TouchUtil;Landroid/graphics/Bitmap;)F

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    invoke-static {v1, v2}, Lcom/haima/hmcp/widgets/TouchUtil;->access$1102(Lcom/haima/hmcp/widgets/TouchUtil;F)F

    .line 90
    .line 91
    .line 92
    iget-object v1, p0, Lcom/haima/hmcp/widgets/TouchUtil$12;->this$0:Lcom/haima/hmcp/widgets/TouchUtil;

    .line 93
    .line 94
    invoke-static {v1}, Lcom/haima/hmcp/widgets/TouchUtil;->access$1100(Lcom/haima/hmcp/widgets/TouchUtil;)F

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    invoke-static {v1, p1, v2}, Lcom/haima/hmcp/widgets/TouchUtil;->access$1400(Lcom/haima/hmcp/widgets/TouchUtil;Landroid/graphics/Bitmap;F)V

    .line 99
    .line 100
    .line 101
    :cond_1
    iget-object v1, p0, Lcom/haima/hmcp/widgets/TouchUtil$12;->this$0:Lcom/haima/hmcp/widgets/TouchUtil;

    .line 102
    .line 103
    invoke-static {v1}, Lcom/haima/hmcp/widgets/TouchUtil;->access$1500(Lcom/haima/hmcp/widgets/TouchUtil;)F

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    invoke-static {v1, p1, v2}, Lcom/haima/hmcp/widgets/TouchUtil;->access$1600(Lcom/haima/hmcp/widgets/TouchUtil;Landroid/graphics/Bitmap;F)Z

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-eqz v1, :cond_2

    .line 112
    .line 113
    iget-object v1, p0, Lcom/haima/hmcp/widgets/TouchUtil$12;->this$0:Lcom/haima/hmcp/widgets/TouchUtil;

    .line 114
    .line 115
    invoke-static {v1, p1}, Lcom/haima/hmcp/widgets/TouchUtil;->access$1700(Lcom/haima/hmcp/widgets/TouchUtil;Landroid/graphics/Bitmap;)F

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    invoke-static {v1, v2}, Lcom/haima/hmcp/widgets/TouchUtil;->access$1502(Lcom/haima/hmcp/widgets/TouchUtil;F)F

    .line 120
    .line 121
    .line 122
    iget-object v1, p0, Lcom/haima/hmcp/widgets/TouchUtil$12;->this$0:Lcom/haima/hmcp/widgets/TouchUtil;

    .line 123
    .line 124
    invoke-static {v1}, Lcom/haima/hmcp/widgets/TouchUtil;->access$1500(Lcom/haima/hmcp/widgets/TouchUtil;)F

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    invoke-static {v1, p1, v2}, Lcom/haima/hmcp/widgets/TouchUtil;->access$1800(Lcom/haima/hmcp/widgets/TouchUtil;Landroid/graphics/Bitmap;F)V

    .line 129
    .line 130
    .line 131
    :cond_2
    iget-object v1, p0, Lcom/haima/hmcp/widgets/TouchUtil$12;->this$0:Lcom/haima/hmcp/widgets/TouchUtil;

    .line 132
    .line 133
    invoke-static {v1}, Lcom/haima/hmcp/widgets/TouchUtil;->access$1100(Lcom/haima/hmcp/widgets/TouchUtil;)F

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    iget-object v3, p0, Lcom/haima/hmcp/widgets/TouchUtil$12;->this$0:Lcom/haima/hmcp/widgets/TouchUtil;

    .line 138
    .line 139
    invoke-static {v3}, Lcom/haima/hmcp/widgets/TouchUtil;->access$1500(Lcom/haima/hmcp/widgets/TouchUtil;)F

    .line 140
    .line 141
    .line 142
    move-result v3

    .line 143
    invoke-static {p1, v2, v3}, Lcom/haima/hmcp/widgets/i0;->a(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-static {v1, p1}, Lcom/haima/hmcp/widgets/TouchUtil;->access$1902(Lcom/haima/hmcp/widgets/TouchUtil;Landroid/view/PointerIcon;)Landroid/view/PointerIcon;

    .line 148
    .line 149
    .line 150
    iget-object p1, p0, Lcom/haima/hmcp/widgets/TouchUtil$12;->this$0:Lcom/haima/hmcp/widgets/TouchUtil;

    .line 151
    .line 152
    invoke-static {p1}, Lcom/haima/hmcp/widgets/TouchUtil;->access$1900(Lcom/haima/hmcp/widgets/TouchUtil;)Landroid/view/PointerIcon;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-static {v0, p1}, Lcom/haima/hmcp/widgets/h0;->a(Landroid/view/View;Landroid/view/PointerIcon;)V

    .line 157
    .line 158
    .line 159
    :cond_3
    return-void
.end method
