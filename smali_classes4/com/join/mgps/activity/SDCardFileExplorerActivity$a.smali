.class Lcom/join/mgps/activity/SDCardFileExplorerActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/SDCardFileExplorerActivity;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/SDCardFileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/SDCardFileExplorerActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/SDCardFileExplorerActivity$a;->b:Lcom/join/mgps/activity/SDCardFileExplorerActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "adapterView",
            "view",
            "position",
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/SDCardFileExplorerActivity$a;->b:Lcom/join/mgps/activity/SDCardFileExplorerActivity;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/activity/SDCardFileExplorerActivity;->currentFiles:[Ljava/io/File;

    .line 4
    .line 5
    aget-object p1, p1, p3

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const/4 p2, 0x1

    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    new-instance p1, Ljava/math/BigDecimal;

    .line 15
    .line 16
    iget-object p4, p0, Lcom/join/mgps/activity/SDCardFileExplorerActivity$a;->b:Lcom/join/mgps/activity/SDCardFileExplorerActivity;

    .line 17
    .line 18
    iget-object p4, p4, Lcom/join/mgps/activity/SDCardFileExplorerActivity;->currentFiles:[Ljava/io/File;

    .line 19
    .line 20
    aget-object p4, p4, p3

    .line 21
    .line 22
    invoke-virtual {p4}, Ljava/io/File;->length()J

    .line 23
    .line 24
    .line 25
    move-result-wide p4

    .line 26
    invoke-direct {p1, p4, p5}, Ljava/math/BigDecimal;-><init>(J)V

    .line 27
    .line 28
    .line 29
    new-instance p4, Ljava/math/BigDecimal;

    .line 30
    .line 31
    const/high16 p5, 0x100000

    .line 32
    .line 33
    invoke-direct {p4, p5}, Ljava/math/BigDecimal;-><init>(I)V

    .line 34
    .line 35
    .line 36
    const/4 p5, 0x2

    .line 37
    const/4 v0, 0x0

    .line 38
    invoke-virtual {p1, p4, p5, v0}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Ljava/math/BigDecimal;->floatValue()F

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    const/high16 p4, 0x42c80000    # 100.0f

    .line 47
    .line 48
    cmpl-float p1, p1, p4

    .line 49
    .line 50
    if-lez p1, :cond_0

    .line 51
    .line 52
    iget-object p1, p0, Lcom/join/mgps/activity/SDCardFileExplorerActivity$a;->b:Lcom/join/mgps/activity/SDCardFileExplorerActivity;

    .line 53
    .line 54
    const-string p3, "\u4e3a\u4e86\u4f60\u7684\u6d41\u91cf\uff0c\u4e0a\u4f20\u6587\u4ef6\u4e0d\u80fd\u8d85\u8fc7100M\u54e6"

    .line 55
    .line 56
    invoke-static {p1, p3, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    new-instance p1, Landroid/content/Intent;

    .line 65
    .line 66
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 67
    .line 68
    .line 69
    iget-object p2, p0, Lcom/join/mgps/activity/SDCardFileExplorerActivity$a;->b:Lcom/join/mgps/activity/SDCardFileExplorerActivity;

    .line 70
    .line 71
    iget-object p2, p2, Lcom/join/mgps/activity/SDCardFileExplorerActivity;->currentFiles:[Ljava/io/File;

    .line 72
    .line 73
    aget-object p2, p2, p3

    .line 74
    .line 75
    const-string p3, "srcFile"

    .line 76
    .line 77
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 78
    .line 79
    .line 80
    iget-object p2, p0, Lcom/join/mgps/activity/SDCardFileExplorerActivity$a;->b:Lcom/join/mgps/activity/SDCardFileExplorerActivity;

    .line 81
    .line 82
    const/16 p3, 0x64

    .line 83
    .line 84
    invoke-virtual {p2, p3, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Lcom/join/mgps/activity/SDCardFileExplorerActivity$a;->b:Lcom/join/mgps/activity/SDCardFileExplorerActivity;

    .line 88
    .line 89
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 90
    .line 91
    .line 92
    :goto_0
    return-void

    .line 93
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/SDCardFileExplorerActivity$a;->b:Lcom/join/mgps/activity/SDCardFileExplorerActivity;

    .line 94
    .line 95
    iget-object p1, p1, Lcom/join/mgps/activity/SDCardFileExplorerActivity;->currentFiles:[Ljava/io/File;

    .line 96
    .line 97
    aget-object p1, p1, p3

    .line 98
    .line 99
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    if-eqz p1, :cond_3

    .line 104
    .line 105
    array-length p4, p1

    .line 106
    if-nez p4, :cond_2

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_2
    iget-object p2, p0, Lcom/join/mgps/activity/SDCardFileExplorerActivity$a;->b:Lcom/join/mgps/activity/SDCardFileExplorerActivity;

    .line 110
    .line 111
    iget-object p4, p2, Lcom/join/mgps/activity/SDCardFileExplorerActivity;->currentFiles:[Ljava/io/File;

    .line 112
    .line 113
    aget-object p3, p4, p3

    .line 114
    .line 115
    iput-object p3, p2, Lcom/join/mgps/activity/SDCardFileExplorerActivity;->currentParent:Ljava/io/File;

    .line 116
    .line 117
    iput-object p1, p2, Lcom/join/mgps/activity/SDCardFileExplorerActivity;->currentFiles:[Ljava/io/File;

    .line 118
    .line 119
    invoke-static {p2, p1}, Lcom/join/mgps/activity/SDCardFileExplorerActivity;->access$000(Lcom/join/mgps/activity/SDCardFileExplorerActivity;[Ljava/io/File;)V

    .line 120
    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/join/mgps/activity/SDCardFileExplorerActivity$a;->b:Lcom/join/mgps/activity/SDCardFileExplorerActivity;

    .line 124
    .line 125
    const-string p3, "\u5f53\u524d\u8def\u5f84\u4e0d\u53ef\u8bbf\u95ee\u6216\u8005\u8be5\u8def\u5f84\u4e0b\u6ca1\u6709\u6587\u4ef6"

    .line 126
    .line 127
    invoke-static {p1, p3, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 132
    .line 133
    .line 134
    :goto_2
    return-void
.end method
