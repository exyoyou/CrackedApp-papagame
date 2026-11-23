.class Lcom/join/mgps/activity/GameMainActivityv2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameMainActivityv2;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/GameMainActivityv2;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameMainActivityv2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameMainActivityv2$a;->a:Lcom/join/mgps/activity/GameMainActivityv2;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "appBarLayout",
            "verticalOffset"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2$a;->a:Lcom/join/mgps/activity/GameMainActivityv2;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/join/mgps/activity/GameMainActivityv2;->z:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const v1, 0x7f070057

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 17
    .line 18
    .line 19
    const v0, 0x7f080a85

    .line 20
    .line 21
    .line 22
    const-string v1, "\u6e38\u620f\u4e3b\u9875"

    .line 23
    .line 24
    const/4 v2, -0x1

    .line 25
    if-nez p2, :cond_0

    .line 26
    .line 27
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivityv2$a;->a:Lcom/join/mgps/activity/GameMainActivityv2;

    .line 28
    .line 29
    iget-object p1, p1, Lcom/join/mgps/activity/GameMainActivityv2;->b:Landroid/widget/TextView;

    .line 30
    .line 31
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivityv2$a;->a:Lcom/join/mgps/activity/GameMainActivityv2;

    .line 35
    .line 36
    iget-object p1, p1, Lcom/join/mgps/activity/GameMainActivityv2;->b:Landroid/widget/TextView;

    .line 37
    .line 38
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivityv2$a;->a:Lcom/join/mgps/activity/GameMainActivityv2;

    .line 42
    .line 43
    iget-object p1, p1, Lcom/join/mgps/activity/GameMainActivityv2;->c:Landroid/widget/ImageView;

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    neg-int p2, p2

    .line 50
    add-int/lit8 p1, p1, -0x5

    .line 51
    .line 52
    if-lt p2, p1, :cond_1

    .line 53
    .line 54
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivityv2$a;->a:Lcom/join/mgps/activity/GameMainActivityv2;

    .line 55
    .line 56
    iget-object p1, p1, Lcom/join/mgps/activity/GameMainActivityv2;->b:Landroid/widget/TextView;

    .line 57
    .line 58
    const p2, -0xbbbbbc

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivityv2$a;->a:Lcom/join/mgps/activity/GameMainActivityv2;

    .line 65
    .line 66
    iget-object p2, p1, Lcom/join/mgps/activity/GameMainActivityv2;->b:Landroid/widget/TextView;

    .line 67
    .line 68
    invoke-static {p1}, Lcom/join/mgps/activity/GameMainActivityv2;->a(Lcom/join/mgps/activity/GameMainActivityv2;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivityv2$a;->a:Lcom/join/mgps/activity/GameMainActivityv2;

    .line 80
    .line 81
    iget-object p1, p1, Lcom/join/mgps/activity/GameMainActivityv2;->c:Landroid/widget/ImageView;

    .line 82
    .line 83
    const p2, 0x7f080659

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivityv2$a;->a:Lcom/join/mgps/activity/GameMainActivityv2;

    .line 91
    .line 92
    iget-object p1, p1, Lcom/join/mgps/activity/GameMainActivityv2;->b:Landroid/widget/TextView;

    .line 93
    .line 94
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 95
    .line 96
    .line 97
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivityv2$a;->a:Lcom/join/mgps/activity/GameMainActivityv2;

    .line 98
    .line 99
    iget-object p1, p1, Lcom/join/mgps/activity/GameMainActivityv2;->b:Landroid/widget/TextView;

    .line 100
    .line 101
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    .line 103
    .line 104
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivityv2$a;->a:Lcom/join/mgps/activity/GameMainActivityv2;

    .line 105
    .line 106
    iget-object p1, p1, Lcom/join/mgps/activity/GameMainActivityv2;->c:Landroid/widget/ImageView;

    .line 107
    .line 108
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 109
    .line 110
    .line 111
    :goto_0
    return-void
.end method
