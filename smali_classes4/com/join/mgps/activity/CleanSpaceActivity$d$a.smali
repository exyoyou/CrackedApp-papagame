.class Lcom/join/mgps/activity/CleanSpaceActivity$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CleanSpaceActivity$d;->s(Lcom/join/mgps/base/b;Lcom/join/mgps/activity/CleanSpaceActivity$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/join/mgps/activity/CleanSpaceActivity$c;

.field final synthetic c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field final synthetic d:Landroid/widget/CheckBox;

.field final synthetic e:Lcom/join/mgps/activity/CleanSpaceActivity$d;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/CleanSpaceActivity$d;Landroid/widget/ImageView;Lcom/join/mgps/activity/CleanSpaceActivity$c;Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/widget/CheckBox;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$checkbox",
            "val$bean",
            "val$item",
            "val$checkboxData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CleanSpaceActivity$d$a;->e:Lcom/join/mgps/activity/CleanSpaceActivity$d;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/CleanSpaceActivity$d$a;->a:Landroid/widget/ImageView;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/activity/CleanSpaceActivity$d$a;->b:Lcom/join/mgps/activity/CleanSpaceActivity$c;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/join/mgps/activity/CleanSpaceActivity$d$a;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/join/mgps/activity/CleanSpaceActivity$d$a;->d:Landroid/widget/CheckBox;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buttonView",
            "isChecked"
        }
    .end annotation

    .line 1
    const/4 p1, 0x1

    .line 2
    if-eqz p2, :cond_1

    .line 3
    .line 4
    iget-object p2, p0, Lcom/join/mgps/activity/CleanSpaceActivity$d$a;->a:Landroid/widget/ImageView;

    .line 5
    .line 6
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 7
    .line 8
    .line 9
    iget-object p2, p0, Lcom/join/mgps/activity/CleanSpaceActivity$d$a;->b:Lcom/join/mgps/activity/CleanSpaceActivity$c;

    .line 10
    .line 11
    invoke-virtual {p2, p1}, Lcom/join/mgps/activity/CleanSpaceActivity$c;->l(Z)V

    .line 12
    .line 13
    .line 14
    iget-object p2, p0, Lcom/join/mgps/activity/CleanSpaceActivity$d$a;->e:Lcom/join/mgps/activity/CleanSpaceActivity$d;

    .line 15
    .line 16
    iget-object p2, p2, Lcom/join/mgps/activity/CleanSpaceActivity$d;->f:Lcom/join/mgps/activity/CleanSpaceActivity;

    .line 17
    .line 18
    invoke-static {p2}, Lcom/join/mgps/activity/CleanSpaceActivity;->access$008(Lcom/join/mgps/activity/CleanSpaceActivity;)I

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Lcom/join/mgps/activity/CleanSpaceActivity$d$a;->b:Lcom/join/mgps/activity/CleanSpaceActivity$c;

    .line 22
    .line 23
    invoke-virtual {p2}, Lcom/join/mgps/activity/CleanSpaceActivity$c;->getType()I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    if-ne p2, p1, :cond_0

    .line 28
    .line 29
    iget-object p1, p0, Lcom/join/mgps/activity/CleanSpaceActivity$d$a;->e:Lcom/join/mgps/activity/CleanSpaceActivity$d;

    .line 30
    .line 31
    iget-object p1, p1, Lcom/join/mgps/activity/CleanSpaceActivity$d;->f:Lcom/join/mgps/activity/CleanSpaceActivity;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/join/mgps/activity/CleanSpaceActivity;->access$100(Lcom/join/mgps/activity/CleanSpaceActivity;)Ljava/util/ArrayList;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object p2, p0, Lcom/join/mgps/activity/CleanSpaceActivity$d$a;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 38
    .line 39
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/CleanSpaceActivity$d$a;->e:Lcom/join/mgps/activity/CleanSpaceActivity$d;

    .line 44
    .line 45
    iget-object p1, p1, Lcom/join/mgps/activity/CleanSpaceActivity$d;->f:Lcom/join/mgps/activity/CleanSpaceActivity;

    .line 46
    .line 47
    invoke-static {p1}, Lcom/join/mgps/activity/CleanSpaceActivity;->access$200(Lcom/join/mgps/activity/CleanSpaceActivity;)Ljava/util/ArrayList;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iget-object p2, p0, Lcom/join/mgps/activity/CleanSpaceActivity$d$a;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/CleanSpaceActivity$d$a;->b:Lcom/join/mgps/activity/CleanSpaceActivity$c;

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/join/mgps/activity/CleanSpaceActivity$c;->c()Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    if-eqz p1, :cond_4

    .line 63
    .line 64
    iget-object p1, p0, Lcom/join/mgps/activity/CleanSpaceActivity$d$a;->b:Lcom/join/mgps/activity/CleanSpaceActivity$c;

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/join/mgps/activity/CleanSpaceActivity$c;->c()Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    if-eqz p2, :cond_4

    .line 79
    .line 80
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    check-cast p2, Ljava/lang/String;

    .line 85
    .line 86
    iget-object v0, p0, Lcom/join/mgps/activity/CleanSpaceActivity$d$a;->e:Lcom/join/mgps/activity/CleanSpaceActivity$d;

    .line 87
    .line 88
    iget-object v0, v0, Lcom/join/mgps/activity/CleanSpaceActivity$d;->f:Lcom/join/mgps/activity/CleanSpaceActivity;

    .line 89
    .line 90
    invoke-virtual {v0, p2}, Lcom/join/mgps/activity/CleanSpaceActivity;->addCleanPath(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_1
    iget-object p2, p0, Lcom/join/mgps/activity/CleanSpaceActivity$d$a;->d:Landroid/widget/CheckBox;

    .line 95
    .line 96
    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 97
    .line 98
    .line 99
    move-result p2

    .line 100
    const/4 v0, 0x0

    .line 101
    if-nez p2, :cond_2

    .line 102
    .line 103
    iget-object p2, p0, Lcom/join/mgps/activity/CleanSpaceActivity$d$a;->a:Landroid/widget/ImageView;

    .line 104
    .line 105
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 106
    .line 107
    .line 108
    :cond_2
    iget-object p2, p0, Lcom/join/mgps/activity/CleanSpaceActivity$d$a;->b:Lcom/join/mgps/activity/CleanSpaceActivity$c;

    .line 109
    .line 110
    invoke-virtual {p2, v0}, Lcom/join/mgps/activity/CleanSpaceActivity$c;->l(Z)V

    .line 111
    .line 112
    .line 113
    iget-object p2, p0, Lcom/join/mgps/activity/CleanSpaceActivity$d$a;->e:Lcom/join/mgps/activity/CleanSpaceActivity$d;

    .line 114
    .line 115
    iget-object p2, p2, Lcom/join/mgps/activity/CleanSpaceActivity$d;->f:Lcom/join/mgps/activity/CleanSpaceActivity;

    .line 116
    .line 117
    invoke-static {p2}, Lcom/join/mgps/activity/CleanSpaceActivity;->access$010(Lcom/join/mgps/activity/CleanSpaceActivity;)I

    .line 118
    .line 119
    .line 120
    iget-object p2, p0, Lcom/join/mgps/activity/CleanSpaceActivity$d$a;->b:Lcom/join/mgps/activity/CleanSpaceActivity$c;

    .line 121
    .line 122
    invoke-virtual {p2}, Lcom/join/mgps/activity/CleanSpaceActivity$c;->getType()I

    .line 123
    .line 124
    .line 125
    move-result p2

    .line 126
    if-ne p2, p1, :cond_3

    .line 127
    .line 128
    iget-object p1, p0, Lcom/join/mgps/activity/CleanSpaceActivity$d$a;->e:Lcom/join/mgps/activity/CleanSpaceActivity$d;

    .line 129
    .line 130
    iget-object p1, p1, Lcom/join/mgps/activity/CleanSpaceActivity$d;->f:Lcom/join/mgps/activity/CleanSpaceActivity;

    .line 131
    .line 132
    invoke-static {p1}, Lcom/join/mgps/activity/CleanSpaceActivity;->access$100(Lcom/join/mgps/activity/CleanSpaceActivity;)Ljava/util/ArrayList;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    iget-object p2, p0, Lcom/join/mgps/activity/CleanSpaceActivity$d$a;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 137
    .line 138
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/CleanSpaceActivity$d$a;->e:Lcom/join/mgps/activity/CleanSpaceActivity$d;

    .line 143
    .line 144
    iget-object p1, p1, Lcom/join/mgps/activity/CleanSpaceActivity$d;->f:Lcom/join/mgps/activity/CleanSpaceActivity;

    .line 145
    .line 146
    invoke-static {p1}, Lcom/join/mgps/activity/CleanSpaceActivity;->access$200(Lcom/join/mgps/activity/CleanSpaceActivity;)Ljava/util/ArrayList;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    iget-object p2, p0, Lcom/join/mgps/activity/CleanSpaceActivity$d$a;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 151
    .line 152
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    :goto_2
    iget-object p1, p0, Lcom/join/mgps/activity/CleanSpaceActivity$d$a;->b:Lcom/join/mgps/activity/CleanSpaceActivity$c;

    .line 156
    .line 157
    invoke-virtual {p1}, Lcom/join/mgps/activity/CleanSpaceActivity$c;->c()Ljava/util/List;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    if-eqz p1, :cond_4

    .line 162
    .line 163
    iget-object p1, p0, Lcom/join/mgps/activity/CleanSpaceActivity$d$a;->b:Lcom/join/mgps/activity/CleanSpaceActivity$c;

    .line 164
    .line 165
    invoke-virtual {p1}, Lcom/join/mgps/activity/CleanSpaceActivity$c;->c()Ljava/util/List;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 174
    .line 175
    .line 176
    move-result p2

    .line 177
    if-eqz p2, :cond_4

    .line 178
    .line 179
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object p2

    .line 183
    check-cast p2, Ljava/lang/String;

    .line 184
    .line 185
    iget-object v0, p0, Lcom/join/mgps/activity/CleanSpaceActivity$d$a;->e:Lcom/join/mgps/activity/CleanSpaceActivity$d;

    .line 186
    .line 187
    iget-object v0, v0, Lcom/join/mgps/activity/CleanSpaceActivity$d;->f:Lcom/join/mgps/activity/CleanSpaceActivity;

    .line 188
    .line 189
    invoke-virtual {v0, p2}, Lcom/join/mgps/activity/CleanSpaceActivity;->removeCleanPath(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    goto :goto_3

    .line 193
    :cond_4
    return-void
.end method
