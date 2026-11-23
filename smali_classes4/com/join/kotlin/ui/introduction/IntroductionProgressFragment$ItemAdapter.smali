.class Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment$ItemAdapter;
.super Lcom/join/mgps/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/join/mgps/base/BaseQuickAdapter<",
        "TT;",
        "Lcom/join/mgps/base/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;


# direct methods
.method public constructor <init>(Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;)V
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
    iput-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment$ItemAdapter;->this$0:Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;

    .line 2
    .line 3
    const p1, 0x7f0d0451

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/join/mgps/base/BaseQuickAdapter;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method protected convert(Lcom/join/mgps/base/b;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "helper",
            "item"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/base/b;",
            "TT;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/join/mgps/dto/TimingBean;

    .line 2
    .line 3
    const v1, 0x7f081170

    .line 4
    .line 5
    .line 6
    const v2, 0x7f08116f

    .line 7
    .line 8
    .line 9
    const v3, 0x7f0a0f31

    .line 10
    .line 11
    .line 12
    const v4, 0x7f0a1a48

    .line 13
    .line 14
    .line 15
    const v5, 0x7f0a1a45

    .line 16
    .line 17
    .line 18
    const v6, 0x7f0a1a50

    .line 19
    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    check-cast p2, Lcom/join/mgps/dto/TimingBean;

    .line 24
    .line 25
    invoke-virtual {p2}, Lcom/join/mgps/dto/TimingBean;->getTime()Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-static {v0}, Lcom/join/mgps/Util/e0;->h(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p1, v5, v0}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Lcom/join/mgps/dto/TimingBean;->getTitle()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {p1, v4, v0}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 45
    .line 46
    .line 47
    const/4 v0, 0x0

    .line 48
    invoke-virtual {p1, v6, v0}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2}, Lcom/join/mgps/dto/TimingBean;->isChecked()Z

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    if-eqz p2, :cond_0

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    const v1, 0x7f08116f

    .line 59
    .line 60
    .line 61
    :goto_0
    invoke-virtual {p1, v3, v1}, Lcom/join/mgps/base/b;->setBackgroundRes(II)Lcom/join/mgps/base/b;

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_1
    instance-of v0, p2, Lcom/join/mgps/dto/VideoChaptersBean;

    .line 66
    .line 67
    if-eqz v0, :cond_3

    .line 68
    .line 69
    check-cast p2, Lcom/join/mgps/dto/VideoChaptersBean;

    .line 70
    .line 71
    invoke-virtual {p2}, Lcom/join/mgps/dto/VideoChaptersBean;->getDuration()Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    invoke-static {v0}, Lcom/join/mgps/Util/e0;->h(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {p1, v5, v0}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2}, Lcom/join/mgps/dto/VideoChaptersBean;->getTitle()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {p1, v4, v0}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 91
    .line 92
    .line 93
    const/4 v0, 0x1

    .line 94
    invoke-virtual {p1, v6, v0}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 95
    .line 96
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    const-string v4, "P"

    .line 103
    .line 104
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p2}, Lcom/join/mgps/dto/VideoChaptersBean;->getPage()Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {p1, v6, v0}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2}, Lcom/join/mgps/dto/VideoChaptersBean;->isChecked()Z

    .line 122
    .line 123
    .line 124
    move-result p2

    .line 125
    if-eqz p2, :cond_2

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_2
    const v1, 0x7f08116f

    .line 129
    .line 130
    .line 131
    :goto_1
    invoke-virtual {p1, v3, v1}, Lcom/join/mgps/base/b;->setBackgroundRes(II)Lcom/join/mgps/base/b;

    .line 132
    .line 133
    .line 134
    :cond_3
    :goto_2
    return-void
.end method
