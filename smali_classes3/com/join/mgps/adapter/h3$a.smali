.class Lcom/join/mgps/adapter/h3$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/h3;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/InformationListDataBean;

.field final synthetic c:I

.field final synthetic d:Lcom/join/mgps/adapter/h3;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/h3;Lcom/join/mgps/dto/InformationListDataBean;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$informationListDataBean",
            "val$i"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/h3$a;->d:Lcom/join/mgps/adapter/h3;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/h3$a;->b:Lcom/join/mgps/dto/InformationListDataBean;

    .line 4
    .line 5
    iput p3, p0, Lcom/join/mgps/adapter/h3$a;->c:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/h3$a;->d:Lcom/join/mgps/adapter/h3;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/adapter/h3;->a(Lcom/join/mgps/adapter/h3;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Lcom/join/mgps/activity/GameInformationActivityV2_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/GameInformationActivityV2_$x;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object v0, p0, Lcom/join/mgps/adapter/h3$a;->b:Lcom/join/mgps/dto/InformationListDataBean;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/dto/InformationListDataBean;->getTag_id()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/GameInformationActivityV2_$x;->c(Ljava/lang/String;)Lcom/join/mgps/activity/GameInformationActivityV2_$x;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object v0, p0, Lcom/join/mgps/adapter/h3$a;->b:Lcom/join/mgps/dto/InformationListDataBean;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/join/mgps/dto/InformationListDataBean;->getTitle()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/GameInformationActivityV2_$x;->d(Ljava/lang/String;)Lcom/join/mgps/activity/GameInformationActivityV2_$x;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object v0, p0, Lcom/join/mgps/adapter/h3$a;->b:Lcom/join/mgps/dto/InformationListDataBean;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/join/mgps/dto/InformationListDataBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v2, "page"

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget v3, p0, Lcom/join/mgps/adapter/h3$a;->c:I

    .line 48
    .line 49
    add-int/lit8 v3, v3, 0x1

    .line 50
    .line 51
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setPosition(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/GameInformationActivityV2_$x;->b(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/activity/GameInformationActivityV2_$x;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lcom/join/mgps/adapter/h3$a;->d:Lcom/join/mgps/adapter/h3;

    .line 70
    .line 71
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    .line 72
    .line 73
    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 74
    .line 75
    .line 76
    iput-object v0, p1, Lcom/join/mgps/adapter/h3;->b:Lcom/join/mgps/dto/ExtBean;

    .line 77
    .line 78
    iget-object p1, p0, Lcom/join/mgps/adapter/h3$a;->d:Lcom/join/mgps/adapter/h3;

    .line 79
    .line 80
    iget-object p1, p1, Lcom/join/mgps/adapter/h3;->b:Lcom/join/mgps/dto/ExtBean;

    .line 81
    .line 82
    sget-object v0, Lcom/papa/sim/statistic/ExtFrom;->home:Lcom/papa/sim/statistic/ExtFrom;

    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lcom/join/mgps/adapter/h3$a;->d:Lcom/join/mgps/adapter/h3;

    .line 92
    .line 93
    invoke-static {p1}, Lcom/join/mgps/adapter/h3;->a(Lcom/join/mgps/adapter/h3;)Landroid/content/Context;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    iget-object p1, p0, Lcom/join/mgps/adapter/h3$a;->d:Lcom/join/mgps/adapter/h3;

    .line 102
    .line 103
    iget-object p1, p1, Lcom/join/mgps/adapter/h3;->b:Lcom/join/mgps/dto/ExtBean;

    .line 104
    .line 105
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->getFrom()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    iget-object p1, p0, Lcom/join/mgps/adapter/h3$a;->d:Lcom/join/mgps/adapter/h3;

    .line 110
    .line 111
    iget-object p1, p1, Lcom/join/mgps/adapter/h3;->b:Lcom/join/mgps/dto/ExtBean;

    .line 112
    .line 113
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->getPosition()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    new-instance p1, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    iget v0, p0, Lcom/join/mgps/adapter/h3$a;->c:I

    .line 126
    .line 127
    add-int/lit8 v0, v0, 0x1

    .line 128
    .line 129
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    const-string v7, "article"

    .line 137
    .line 138
    iget-object p1, p0, Lcom/join/mgps/adapter/h3$a;->d:Lcom/join/mgps/adapter/h3;

    .line 139
    .line 140
    invoke-static {p1}, Lcom/join/mgps/adapter/h3;->a(Lcom/join/mgps/adapter/h3;)Landroid/content/Context;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v8

    .line 152
    invoke-virtual/range {v3 .. v8}, Lcom/papa/sim/statistic/t;->P2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    iget-object p1, p0, Lcom/join/mgps/adapter/h3$a;->d:Lcom/join/mgps/adapter/h3;

    .line 156
    .line 157
    invoke-static {p1}, Lcom/join/mgps/adapter/h3;->a(Lcom/join/mgps/adapter/h3;)Landroid/content/Context;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    sget-object v0, Lcom/papa/sim/statistic/Event;->commonClick:Lcom/papa/sim/statistic/Event;

    .line 166
    .line 167
    iget-object v1, p0, Lcom/join/mgps/adapter/h3$a;->b:Lcom/join/mgps/dto/InformationListDataBean;

    .line 168
    .line 169
    invoke-virtual {v1}, Lcom/join/mgps/dto/InformationListDataBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    new-instance v3, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    iget v2, p0, Lcom/join/mgps/adapter/h3$a;->c:I

    .line 182
    .line 183
    add-int/lit8 v2, v2, 0x1

    .line 184
    .line 185
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setPosition(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 205
    .line 206
    .line 207
    return-void
.end method
