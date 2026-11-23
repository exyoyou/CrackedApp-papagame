.class Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/widget/LinearLayout;

.field final synthetic c:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;


# direct methods
.method constructor <init>(Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$a;->c:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;

    .line 2
    .line 3
    iput-object p2, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$a;->b:Landroid/widget/LinearLayout;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$a;->c:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;

    .line 12
    .line 13
    invoke-virtual {v0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->getCurrentPositionWhenPlaying()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {v0, p1, v1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->C(II)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$a;->c:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;

    .line 21
    .line 22
    iget-object v0, p1, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->o2:Landroid/widget/TextView;

    .line 23
    .line 24
    iget-object v1, p1, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->F:Ljava/util/LinkedHashMap;

    .line 25
    .line 26
    iget p1, p1, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->G:I

    .line 27
    .line 28
    invoke-static {v1, p1}, Lfm/jiecao/jcvideoplayer_lib/e;->e(Ljava/util/LinkedHashMap;I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    const/4 p1, 0x0

    .line 36
    :goto_0
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$a;->b:Landroid/widget/LinearLayout;

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-ge p1, v0, :cond_1

    .line 43
    .line 44
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$a;->c:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;

    .line 45
    .line 46
    iget v0, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->G:I

    .line 47
    .line 48
    if-ne p1, v0, :cond_0

    .line 49
    .line 50
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$a;->b:Landroid/widget/LinearLayout;

    .line 51
    .line 52
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Landroid/widget/TextView;

    .line 57
    .line 58
    const-string v1, "#fff85959"

    .line 59
    .line 60
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_0
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$a;->b:Landroid/widget/LinearLayout;

    .line 69
    .line 70
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Landroid/widget/TextView;

    .line 75
    .line 76
    const-string v1, "#ffffff"

    .line 77
    .line 78
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 83
    .line 84
    .line 85
    :goto_1
    add-int/lit8 p1, p1, 0x1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_1
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$a;->c:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;

    .line 89
    .line 90
    iget-object p1, p1, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->p2:Landroid/widget/PopupWindow;

    .line 91
    .line 92
    if-eqz p1, :cond_2

    .line 93
    .line 94
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 95
    .line 96
    .line 97
    :cond_2
    return-void
.end method
