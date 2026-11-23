.class public Lcom/join/mgps/adapter/o5$m;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/o5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "m"
.end annotation


# instance fields
.field public d:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public e:Lcom/facebook/drawee/view/SimpleDraweeView;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/LinearLayout;

.field public h:Landroid/widget/TextView;

.field public i:Landroid/widget/TextView;

.field public j:Landroid/widget/ProgressBar;

.field public k:Landroid/widget/ProgressBar;

.field public l:Landroid/widget/TextView;

.field public m:Landroid/widget/FrameLayout;

.field public n:Landroid/widget/TextView;

.field public o:Landroid/widget/ProgressBar;

.field public p:Lcom/join/android/app/component/video/MultiStandVideo;

.field final synthetic q:Lcom/join/mgps/adapter/o5;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/o5;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/join/mgps/adapter/o5;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "itemview"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/o5$m;->q:Lcom/join/mgps/adapter/o5;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f0a097d

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/join/mgps/adapter/o5$m;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 16
    .line 17
    const p1, 0x7f0a09cc

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/join/mgps/adapter/o5$m;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 27
    .line 28
    const p1, 0x7f0a1889

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Landroid/widget/TextView;

    .line 36
    .line 37
    iput-object p1, p0, Lcom/join/mgps/adapter/o5$m;->f:Landroid/widget/TextView;

    .line 38
    .line 39
    const p1, 0x7f0a0eab

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Landroid/widget/LinearLayout;

    .line 47
    .line 48
    iput-object p1, p0, Lcom/join/mgps/adapter/o5$m;->g:Landroid/widget/LinearLayout;

    .line 49
    .line 50
    const p1, 0x7f0a00f7

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Landroid/widget/TextView;

    .line 58
    .line 59
    iput-object p1, p0, Lcom/join/mgps/adapter/o5$m;->h:Landroid/widget/TextView;

    .line 60
    .line 61
    const p1, 0x7f0a0f94

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Landroid/widget/TextView;

    .line 69
    .line 70
    iput-object p1, p0, Lcom/join/mgps/adapter/o5$m;->i:Landroid/widget/TextView;

    .line 71
    .line 72
    const p1, 0x7f0a12a5

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    check-cast p1, Landroid/widget/ProgressBar;

    .line 80
    .line 81
    iput-object p1, p0, Lcom/join/mgps/adapter/o5$m;->j:Landroid/widget/ProgressBar;

    .line 82
    .line 83
    const p1, 0x7f0a129e

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    check-cast p1, Landroid/widget/ProgressBar;

    .line 91
    .line 92
    iput-object p1, p0, Lcom/join/mgps/adapter/o5$m;->k:Landroid/widget/ProgressBar;

    .line 93
    .line 94
    const p1, 0x7f0a188c

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    check-cast p1, Landroid/widget/TextView;

    .line 102
    .line 103
    iput-object p1, p0, Lcom/join/mgps/adapter/o5$m;->l:Landroid/widget/TextView;

    .line 104
    .line 105
    const p1, 0x7f0a0642

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    check-cast p1, Landroid/widget/FrameLayout;

    .line 113
    .line 114
    iput-object p1, p0, Lcom/join/mgps/adapter/o5$m;->m:Landroid/widget/FrameLayout;

    .line 115
    .line 116
    const p1, 0x7f0a1857

    .line 117
    .line 118
    .line 119
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    check-cast p1, Landroid/widget/TextView;

    .line 124
    .line 125
    iput-object p1, p0, Lcom/join/mgps/adapter/o5$m;->n:Landroid/widget/TextView;

    .line 126
    .line 127
    const p1, 0x7f0a0f6c

    .line 128
    .line 129
    .line 130
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    check-cast p1, Landroid/widget/ProgressBar;

    .line 135
    .line 136
    iput-object p1, p0, Lcom/join/mgps/adapter/o5$m;->o:Landroid/widget/ProgressBar;

    .line 137
    .line 138
    const p1, 0x7f0a1bea

    .line 139
    .line 140
    .line 141
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    check-cast p1, Lcom/join/android/app/component/video/MultiStandVideo;

    .line 146
    .line 147
    iput-object p1, p0, Lcom/join/mgps/adapter/o5$m;->p:Lcom/join/android/app/component/video/MultiStandVideo;

    .line 148
    .line 149
    return-void
.end method
