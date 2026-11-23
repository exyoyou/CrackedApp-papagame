.class Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->w()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;


# direct methods
.method constructor <init>(Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$c;->a:Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 1
    const/4 p1, 0x2

    .line 2
    if-eqz p2, :cond_1

    .line 3
    .line 4
    iget-object p2, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$c;->a:Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-static {p2, p1, v0}, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->a(Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;II)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$c;->a:Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;

    .line 11
    .line 12
    invoke-static {p1}, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->b(Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getCheckedImageDrawable()Landroid/graphics/drawable/Drawable;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$c;->a:Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;

    .line 23
    .line 24
    invoke-static {p1}, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->a(Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;)Landroid/widget/CheckBox;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iget-object p2, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$c;->a:Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;

    .line 29
    .line 30
    invoke-static {p2}, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->b(Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-virtual {p2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getCheckedImageDrawable()Landroid/graphics/drawable/Drawable;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 39
    .line 40
    .line 41
    goto/16 :goto_0

    .line 42
    .line 43
    :cond_0
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$c;->a:Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;

    .line 44
    .line 45
    invoke-static {p1}, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->b(Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getCheckedImageName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-nez p1, :cond_3

    .line 58
    .line 59
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$c;->a:Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;

    .line 60
    .line 61
    invoke-static {p1}, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->a(Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;)Landroid/widget/CheckBox;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iget-object p2, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$c;->a:Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;

    .line 66
    .line 67
    invoke-static {p2}, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->e(Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;)Lcom/netease/nis/quicklogin/utils/h;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$c;->a:Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;

    .line 72
    .line 73
    invoke-static {v0}, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->b(Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getCheckedImageName()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {p2, v0}, Lcom/netease/nis/quicklogin/utils/h;->c(Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    move-result p2

    .line 85
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_1
    iget-object p2, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$c;->a:Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;

    .line 90
    .line 91
    const/4 v0, 0x0

    .line 92
    invoke-static {p2, p1, v0}, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->a(Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;II)V

    .line 93
    .line 94
    .line 95
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$c;->a:Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;

    .line 96
    .line 97
    invoke-static {p1}, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->b(Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getUnCheckedImageNameDrawable()Landroid/graphics/drawable/Drawable;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    if-eqz p1, :cond_2

    .line 106
    .line 107
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$c;->a:Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;

    .line 108
    .line 109
    invoke-static {p1}, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->a(Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;)Landroid/widget/CheckBox;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    iget-object p2, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$c;->a:Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;

    .line 114
    .line 115
    invoke-static {p2}, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->b(Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    invoke-virtual {p2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getUnCheckedImageNameDrawable()Landroid/graphics/drawable/Drawable;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_2
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$c;->a:Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;

    .line 128
    .line 129
    invoke-static {p1}, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->b(Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getUnCheckedImageName()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    if-nez p1, :cond_3

    .line 142
    .line 143
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$c;->a:Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;

    .line 144
    .line 145
    invoke-static {p1}, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->a(Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;)Landroid/widget/CheckBox;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    iget-object p2, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$c;->a:Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;

    .line 150
    .line 151
    invoke-static {p2}, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->e(Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;)Lcom/netease/nis/quicklogin/utils/h;

    .line 152
    .line 153
    .line 154
    move-result-object p2

    .line 155
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$c;->a:Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;

    .line 156
    .line 157
    invoke-static {v0}, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->b(Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getUnCheckedImageName()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-virtual {p2, v0}, Lcom/netease/nis/quicklogin/utils/h;->c(Ljava/lang/String;)I

    .line 166
    .line 167
    .line 168
    move-result p2

    .line 169
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 170
    .line 171
    .line 172
    :cond_3
    :goto_0
    return-void
.end method
