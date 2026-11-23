.class Lcom/join/android/app/component/album/lib/b$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/android/app/component/album/lib/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/android/app/component/album/lib/b;


# direct methods
.method constructor <init>(Lcom/join/android/app/component/album/lib/b;)V
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
    iput-object p1, p0, Lcom/join/android/app/component/album/lib/b$a;->a:Lcom/join/android/app/component/album/lib/b;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/album/lib/b$a;->a:Lcom/join/android/app/component/album/lib/b;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/component/album/lib/b;->a(Lcom/join/android/app/component/album/lib/b;)Lcom/join/android/app/component/album/lib/b$g;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    .line 11
    .line 12
    if-eqz v0, :cond_5

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    if-eq v0, v1, :cond_4

    .line 16
    .line 17
    const/4 v1, 0x4

    .line 18
    if-eq v0, v1, :cond_2

    .line 19
    .line 20
    const/16 v1, 0x8

    .line 21
    .line 22
    if-eq v0, v1, :cond_1

    .line 23
    .line 24
    goto/16 :goto_1

    .line 25
    .line 26
    :cond_1
    iget-object v0, p0, Lcom/join/android/app/component/album/lib/b$a;->a:Lcom/join/android/app/component/album/lib/b;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/join/android/app/component/album/lib/b;->a(Lcom/join/android/app/component/album/lib/b;)Lcom/join/android/app/component/album/lib/b$g;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 33
    .line 34
    invoke-interface {v0, p1}, Lcom/join/android/app/component/album/lib/b$g;->b(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    goto/16 :goto_1

    .line 38
    .line 39
    :cond_2
    iget-object v0, p0, Lcom/join/android/app/component/album/lib/b$a;->a:Lcom/join/android/app/component/album/lib/b;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/join/android/app/component/album/lib/b;->b(Lcom/join/android/app/component/album/lib/b;)Ljava/util/Map;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 46
    .line 47
    .line 48
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast p1, Ljava/util/Map;

    .line 51
    .line 52
    iget-object v0, p0, Lcom/join/android/app/component/album/lib/b$a;->a:Lcom/join/android/app/component/album/lib/b;

    .line 53
    .line 54
    invoke-static {v0}, Lcom/join/android/app/component/album/lib/b;->b(Lcom/join/android/app/component/album/lib/b;)Ljava/util/Map;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/join/android/app/component/album/lib/b$a;->a:Lcom/join/android/app/component/album/lib/b;

    .line 62
    .line 63
    iget-object p1, p1, Lcom/join/android/app/component/album/lib/b;->f:Ljava/util/List;

    .line 64
    .line 65
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lcom/join/android/app/component/album/lib/b$a;->a:Lcom/join/android/app/component/album/lib/b;

    .line 69
    .line 70
    invoke-static {p1}, Lcom/join/android/app/component/album/lib/b;->b(Lcom/join/android/app/component/album/lib/b;)Ljava/util/Map;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_3

    .line 87
    .line 88
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Ljava/lang/String;

    .line 93
    .line 94
    iget-object v1, p0, Lcom/join/android/app/component/album/lib/b$a;->a:Lcom/join/android/app/component/album/lib/b;

    .line 95
    .line 96
    iget-object v2, v1, Lcom/join/android/app/component/album/lib/b;->f:Ljava/util/List;

    .line 97
    .line 98
    invoke-static {v1}, Lcom/join/android/app/component/album/lib/b;->b(Lcom/join/android/app/component/album/lib/b;)Ljava/util/Map;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    check-cast v0, Lcom/join/android/app/component/album/lib/a;

    .line 107
    .line 108
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_3
    iget-object p1, p0, Lcom/join/android/app/component/album/lib/b$a;->a:Lcom/join/android/app/component/album/lib/b;

    .line 113
    .line 114
    iget-object p1, p1, Lcom/join/android/app/component/album/lib/b;->f:Ljava/util/List;

    .line 115
    .line 116
    new-instance v0, Lcom/join/android/app/component/album/lib/b$a$a;

    .line 117
    .line 118
    invoke-direct {v0, p0}, Lcom/join/android/app/component/album/lib/b$a$a;-><init>(Lcom/join/android/app/component/album/lib/b$a;)V

    .line 119
    .line 120
    .line 121
    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 122
    .line 123
    .line 124
    iget-object p1, p0, Lcom/join/android/app/component/album/lib/b$a;->a:Lcom/join/android/app/component/album/lib/b;

    .line 125
    .line 126
    invoke-static {p1}, Lcom/join/android/app/component/album/lib/b;->a(Lcom/join/android/app/component/album/lib/b;)Lcom/join/android/app/component/album/lib/b$g;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    iget-object v0, p0, Lcom/join/android/app/component/album/lib/b$a;->a:Lcom/join/android/app/component/album/lib/b;

    .line 131
    .line 132
    invoke-static {v0}, Lcom/join/android/app/component/album/lib/b;->b(Lcom/join/android/app/component/album/lib/b;)Ljava/util/Map;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-interface {p1, v0}, Lcom/join/android/app/component/album/lib/b$g;->c(Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    iget-object p1, p0, Lcom/join/android/app/component/album/lib/b$a;->a:Lcom/join/android/app/component/album/lib/b;

    .line 140
    .line 141
    iget v0, p1, Lcom/join/android/app/component/album/lib/b;->d:I

    .line 142
    .line 143
    if-nez v0, :cond_6

    .line 144
    .line 145
    invoke-static {p1}, Lcom/join/android/app/component/album/lib/b;->c(Lcom/join/android/app/component/album/lib/b;)Z

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    if-eqz p1, :cond_6

    .line 150
    .line 151
    iget-object p1, p0, Lcom/join/android/app/component/album/lib/b$a;->a:Lcom/join/android/app/component/album/lib/b;

    .line 152
    .line 153
    invoke-static {p1}, Lcom/join/android/app/component/album/lib/b;->d(Lcom/join/android/app/component/album/lib/b;)Landroid/content/Context;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    const-string v0, "\u6ca1\u626b\u63cf\u5230\u4e00\u5f20\u56fe\u7247"

    .line 158
    .line 159
    const/4 v1, 0x0

    .line 160
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 165
    .line 166
    .line 167
    goto :goto_1

    .line 168
    :cond_4
    iget-object v0, p0, Lcom/join/android/app/component/album/lib/b$a;->a:Lcom/join/android/app/component/album/lib/b;

    .line 169
    .line 170
    invoke-static {v0}, Lcom/join/android/app/component/album/lib/b;->a(Lcom/join/android/app/component/album/lib/b;)Lcom/join/android/app/component/album/lib/b$g;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 175
    .line 176
    invoke-interface {v0, p1}, Lcom/join/android/app/component/album/lib/b$g;->b(Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    goto :goto_1

    .line 180
    :cond_5
    iget-object v0, p0, Lcom/join/android/app/component/album/lib/b$a;->a:Lcom/join/android/app/component/album/lib/b;

    .line 181
    .line 182
    invoke-static {v0}, Lcom/join/android/app/component/album/lib/b;->a(Lcom/join/android/app/component/album/lib/b;)Lcom/join/android/app/component/album/lib/b$g;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 187
    .line 188
    invoke-interface {v0, p1}, Lcom/join/android/app/component/album/lib/b$g;->c(Ljava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    :cond_6
    :goto_1
    return-void
.end method
