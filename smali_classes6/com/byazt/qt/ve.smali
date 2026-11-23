.class public Lcom/byazt/qt/ve;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xdd,
        0x36
    }
.end annotation


# direct methods
.method public static c(Ljava/util/function/Function;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;I)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 112
    :cond_0
    new-instance v1, Lcom/byazt/aas/zb;

    invoke-direct {v1}, Lcom/byazt/aas/zb;-><init>()V

    const-string v2, "hashCode"

    .line 113
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object p1

    .line 114
    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    move-result-object v1

    const/16 v2, 0x1b

    invoke-virtual {v1, v2}, Lcom/byazt/yxi/uj;->c(I)Lcom/byazt/yxi/uj;

    move-result-object v1

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Lcom/byazt/yxi/uj;->c(Ljava/lang/Class;)Lcom/byazt/yxi/uj;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    move-result-object p1

    invoke-static {p0, p1}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 115
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public static c(Lcom/byazt/eia/sp;Z)Lcom/byazt/wrq/ve;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 143
    :cond_0
    invoke-interface {p0}, Lcom/byazt/eia/sp;->rl()Ljava/lang/String;

    move-result-object v1

    .line 144
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    sget v2, Lcom/byazt/omf/p;->uj:I

    const/16 v3, 0x1900

    if-ge v2, v3, :cond_1

    goto :goto_0

    .line 145
    :cond_1
    invoke-interface {p0}, Lcom/byazt/eia/sp;->qy()Ljava/lang/String;

    move-result-object v2

    .line 146
    invoke-interface {p0}, Lcom/byazt/eia/sp;->gu()Ljava/lang/String;

    move-result-object v3

    .line 147
    const-class v4, Lcom/byazt/ocd/tt;

    invoke-static {v1, v4}, Lcom/byazt/omf/rl;->c(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/ocd/tt;

    if-eqz v1, :cond_2

    .line 148
    invoke-interface {p0}, Lcom/byazt/eia/sp;->gr()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {p0}, Lcom/byazt/eia/sp;->u_()Lcom/byazt/ete/gt;

    move-result-object p0

    invoke-virtual {p0}, Lcom/byazt/ete/gt;->a()I

    move-result p0

    const/4 v4, 0x1

    if-ne p0, v4, :cond_2

    .line 149
    new-instance p0, Lcom/byazt/qt/ve$1;

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/byazt/qt/ve$1;-><init>(ZLcom/byazt/ocd/tt;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_2
    const-string p0, "dof"

    const-string p1, "bridge something invalid"

    .line 150
    invoke-static {p0, p1}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-object v0
.end method

.method public static c(II)V
    .locals 3

    .line 102
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/omf/x;->nb()Ljava/util/function/Function;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 103
    :cond_0
    new-instance v1, Lcom/byazt/aas/zb;

    invoke-direct {v1}, Lcom/byazt/aas/zb;-><init>()V

    const-string v2, "hashCode"

    .line 104
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object p1

    const-string v1, "downloadMode"

    .line 105
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object p0

    .line 106
    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    move-result-object p1

    const/16 v1, 0x1a

    invoke-virtual {p1, v1}, Lcom/byazt/yxi/uj;->c(I)Lcom/byazt/yxi/uj;

    move-result-object p1

    const-class v1, Ljava/lang/Void;

    invoke-virtual {p1, v1}, Lcom/byazt/yxi/uj;->c(Ljava/lang/Class;)Lcom/byazt/yxi/uj;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p0}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    move-result-object p0

    invoke-virtual {p0}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    move-result-object p0

    invoke-static {v0, p0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static c(Lcom/byazt/ete/ic;IZ)V
    .locals 7

    .line 87
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/omf/x;->nb()Ljava/util/function/Function;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 88
    :cond_0
    invoke-static {p0}, Lcom/byazt/ete/gt;->uj(Lcom/byazt/ete/ic;)I

    move-result v1

    .line 89
    invoke-static {p0}, Lcom/byazt/ete/gt;->n(Lcom/byazt/ete/ic;)I

    move-result v2

    if-eqz p0, :cond_2

    .line 90
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->gr()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    const/4 v2, 0x2

    :cond_2
    const/4 p2, 0x0

    if-eqz p0, :cond_3

    .line 91
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->nm()Lcom/byazt/ete/rl;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 92
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->nm()Lcom/byazt/ete/rl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/byazt/ete/rl;->c()Z

    move-result v3

    .line 93
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->nm()Lcom/byazt/ete/rl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/byazt/ete/rl;->tt()Z

    move-result p0

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 94
    :goto_0
    new-instance v5, Lcom/byazt/aas/zb;

    invoke-direct {v5}, Lcom/byazt/aas/zb;-><init>()V

    const-string v6, "autoOpen"

    .line 95
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v6, v1}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object v1

    const-string v5, "downloadMode"

    .line 96
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object v1

    const-string v2, "isHaveDownloadSdkConfig"

    .line 97
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object v1

    const-string v2, "hashCode"

    .line 98
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object p1

    const-string v1, "isEnableAH"

    .line 99
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object p1

    const-string v1, "isEnableAM"

    .line 100
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object p0

    .line 101
    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    move-result-object p1

    const/16 v1, 0x19

    invoke-virtual {p1, v1}, Lcom/byazt/yxi/uj;->c(I)Lcom/byazt/yxi/uj;

    move-result-object p1

    const-class v1, Ljava/lang/Void;

    invoke-virtual {p1, v1}, Lcom/byazt/yxi/uj;->c(Ljava/lang/Class;)Lcom/byazt/yxi/uj;

    move-result-object p1

    invoke-virtual {p1, p2, p0}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    move-result-object p0

    invoke-virtual {p0}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    move-result-object p0

    invoke-static {v0, p0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static c(Lcom/byazt/qt/c;Ljava/lang/String;ILandroid/graphics/Bitmap;)V
    .locals 6

    .line 128
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/omf/x;->nb()Ljava/util/function/Function;

    move-result-object v0

    if-eqz v0, :cond_2

    if-nez p0, :cond_0

    goto/16 :goto_1

    .line 129
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    const/4 v3, 0x0

    if-lt v1, v2, :cond_1

    .line 130
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/ogz/sl;->id()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 131
    :goto_0
    new-instance v2, Lcom/byazt/aas/zb;

    invoke-direct {v2}, Lcom/byazt/aas/zb;-><init>()V

    const-string v4, "install_app_name"

    .line 132
    invoke-virtual {p0}, Lcom/byazt/qt/c;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object v2

    const-string v4, "install_icon_bitmap"

    .line 133
    invoke-virtual {v2, v4, p3}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object p3

    const-string v2, "install_action_type"

    .line 134
    invoke-virtual {p3, v2, p1}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object p1

    const-string p3, "install_click_type"

    .line 135
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object p1

    const-string p2, "install_enable_target_34"

    .line 136
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object p1

    const-string p2, "install_package_name"

    .line 137
    invoke-virtual {p0}, Lcom/byazt/qt/c;->ve()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object p1

    const-string p2, "install_tag"

    .line 138
    invoke-virtual {p0}, Lcom/byazt/qt/c;->sp()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object p1

    const-string p2, "install_value"

    .line 139
    invoke-virtual {p0}, Lcom/byazt/qt/c;->x()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object p1

    const-string p2, "install_log_extra"

    .line 140
    invoke-virtual {p0}, Lcom/byazt/qt/c;->n()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object p1

    .line 141
    invoke-virtual {p0}, Lcom/byazt/qt/c;->uj()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p2, "install_download_id"

    invoke-virtual {p1, p2, p0}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object p0

    .line 142
    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    move-result-object p1

    const/16 p2, 0xa0

    invoke-virtual {p1, p2}, Lcom/byazt/yxi/uj;->c(I)Lcom/byazt/yxi/uj;

    move-result-object p1

    const-class p2, Ljava/lang/Void;

    invoke-virtual {p1, p2}, Lcom/byazt/yxi/uj;->c(Ljava/lang/Class;)Lcom/byazt/yxi/uj;

    move-result-object p1

    invoke-virtual {p1, v3, p0}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    move-result-object p0

    invoke-virtual {p0}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    move-result-object p0

    invoke-static {v0, p0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    return-void
.end method

.method public static c(Lcom/byazt/wrq/ve;I)V
    .locals 3

    .line 123
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/omf/x;->nb()Ljava/util/function/Function;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 124
    :cond_0
    new-instance v1, Lcom/byazt/aas/zb;

    invoke-direct {v1}, Lcom/byazt/aas/zb;-><init>()V

    const-string v2, "hashCode"

    .line 125
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object p1

    const-string v1, "downloadMarketInterceptor"

    .line 126
    invoke-virtual {p1, v1, p0}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object p0

    .line 127
    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    move-result-object p1

    const/16 v1, 0x9a

    invoke-virtual {p1, v1}, Lcom/byazt/yxi/uj;->c(I)Lcom/byazt/yxi/uj;

    move-result-object p1

    const-class v1, Ljava/lang/Void;

    invoke-virtual {p1, v1}, Lcom/byazt/yxi/uj;->c(Ljava/lang/Class;)Lcom/byazt/yxi/uj;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p0}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    move-result-object p0

    invoke-virtual {p0}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    move-result-object p0

    invoke-static {v0, p0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static c(Ljava/lang/String;I)V
    .locals 3

    .line 169
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/omf/x;->nb()Ljava/util/function/Function;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 170
    :cond_0
    new-instance v1, Lcom/byazt/aas/zb;

    invoke-direct {v1}, Lcom/byazt/aas/zb;-><init>()V

    const-string v2, "clickButtonTag"

    .line 171
    invoke-virtual {v1, v2, p0}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object v1

    const-string v2, "clickItemTag"

    .line 172
    invoke-virtual {v1, v2, p0}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object p0

    const-string v1, "hashCode"

    .line 173
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object p0

    const-string p1, "clickStartLabel"

    const-string v1, "click_start"

    .line 174
    invoke-virtual {p0, p1, v1}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object p0

    const-string p1, "clickContinueLabel"

    const-string v1, "click_continue"

    .line 175
    invoke-virtual {p0, p1, v1}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object p0

    const-string p1, "clickPauseLabel"

    const-string v1, "click_pause"

    .line 176
    invoke-virtual {p0, p1, v1}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object p0

    const-string p1, "storageDenyLabel"

    const-string v1, "download_failed"

    .line 177
    invoke-virtual {p0, p1, v1}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object p0

    const-string p1, "clickInstallLabel"

    const-string v1, "click_install"

    .line 178
    invoke-virtual {p0, p1, v1}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object p0

    const-string p1, "isEnableClickEvent"

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 179
    invoke-virtual {p0, p1, v1}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object p0

    const-string p1, "isEnableV3Event"

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 180
    invoke-virtual {p0, p1, v1}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object p0

    .line 181
    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    move-result-object p1

    const/16 v1, 0x1d

    invoke-virtual {p1, v1}, Lcom/byazt/yxi/uj;->c(I)Lcom/byazt/yxi/uj;

    move-result-object p1

    const-class v1, Ljava/lang/Void;

    invoke-virtual {p1, v1}, Lcom/byazt/yxi/uj;->c(Ljava/lang/Class;)Lcom/byazt/yxi/uj;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p0}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    move-result-object p0

    invoke-virtual {p0}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    move-result-object p0

    invoke-static {v0, p0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static c(Ljava/lang/String;Lcom/byazt/ete/ic;Lorg/json/JSONObject;I)V
    .locals 10

    .line 11
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/omf/x;->nb()Ljava/util/function/Function;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 v1, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v9, p3

    .line 12
    invoke-static/range {v1 .. v9}, Lcom/byazt/qt/ve;->c(ZLjava/util/function/Function;Ljava/lang/String;Lcom/byazt/ete/ic;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->z()Lcom/byazt/ete/n;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {v0}, Lcom/byazt/ete/n;->tt()Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-virtual {v0}, Lcom/byazt/ete/n;->ve()Ljava/lang/String;

    move-result-object v3

    .line 16
    invoke-virtual {v0}, Lcom/byazt/ete/n;->uj()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    move-object v6, v1

    move-object v7, v3

    goto :goto_0

    :cond_2
    const-string v0, ""

    move-object v6, v0

    move-object v7, v6

    move-object v8, v7

    :goto_0
    const/4 v1, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v9, p3

    .line 17
    invoke-static/range {v1 .. v9}, Lcom/byazt/qt/ve;->c(ZLjava/util/function/Function;Ljava/lang/String;Lcom/byazt/ete/ic;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/ete/ic;Lorg/json/JSONObject;I)V
    .locals 10

    .line 2
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/omf/x;->nb()Ljava/util/function/Function;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    const/4 v1, 0x1

    const-string v7, ""

    const/4 v8, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p0

    move v9, p4

    .line 3
    invoke-static/range {v1 .. v9}, Lcom/byazt/qt/ve;->c(ZLjava/util/function/Function;Ljava/lang/String;Lcom/byazt/ete/ic;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 4
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    const-string v7, ""

    const/4 v8, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p0

    move v9, p4

    .line 5
    invoke-static/range {v1 .. v9}, Lcom/byazt/qt/ve;->c(ZLjava/util/function/Function;Ljava/lang/String;Lcom/byazt/ete/ic;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 6
    :cond_2
    invoke-virtual {p2}, Lcom/byazt/ete/ic;->ls()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8
    invoke-virtual {p2}, Lcom/byazt/ete/ic;->rh()Lcom/byazt/ete/a;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 9
    invoke-virtual {p2}, Lcom/byazt/ete/ic;->rh()Lcom/byazt/ete/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ete/a;->u()Ljava/lang/String;

    move-result-object v0

    :cond_3
    move-object v8, v0

    const/4 v1, 0x0

    const-string v7, ""

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p0

    move v9, p4

    .line 10
    invoke-static/range {v1 .. v9}, Lcom/byazt/qt/ve;->c(ZLjava/util/function/Function;Ljava/lang/String;Lcom/byazt/ete/ic;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;I)V
    .locals 3

    .line 182
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/omf/x;->nb()Ljava/util/function/Function;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 183
    new-instance v1, Lcom/byazt/aas/zb;

    invoke-direct {v1}, Lcom/byazt/aas/zb;-><init>()V

    const-string v2, "clickButtonTag"

    .line 184
    invoke-virtual {v1, v2, p0}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object p0

    const-string v1, "clickItemTag"

    .line 185
    invoke-virtual {p0, v1, p1}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object p0

    const-string p1, "clickStartLabel"

    const-string v1, "click_start"

    .line 186
    invoke-virtual {p0, p1, v1}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object p0

    const-string p1, "clickContinueLabel"

    const-string v1, "click_continue"

    .line 187
    invoke-virtual {p0, p1, v1}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object p0

    const-string p1, "clickPauseLabel"

    const-string v1, "click_pause"

    .line 188
    invoke-virtual {p0, p1, v1}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object p0

    const-string p1, "storageDenyLabel"

    const-string v1, "download_failed"

    .line 189
    invoke-virtual {p0, p1, v1}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object p0

    const-string p1, "clickInstallLabel"

    const-string v1, "click_install"

    .line 190
    invoke-virtual {p0, p1, v1}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object p0

    const-string p1, "isEnableClickEvent"

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 191
    invoke-virtual {p0, p1, v1}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object p0

    const-string p1, "hashCode"

    .line 192
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p1, p3}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object p0

    const-string p1, "isEnableV3Event"

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 193
    invoke-virtual {p0, p1, p3}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object p0

    const-string p1, "extraEventObject"

    .line 194
    invoke-virtual {p0, p1, p2}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object p0

    .line 195
    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    move-result-object p1

    const/16 p2, 0x1d

    invoke-virtual {p1, p2}, Lcom/byazt/yxi/uj;->c(I)Lcom/byazt/yxi/uj;

    move-result-object p1

    const-class p2, Ljava/lang/Void;

    invoke-virtual {p1, p2}, Lcom/byazt/yxi/uj;->c(Ljava/lang/Class;)Lcom/byazt/yxi/uj;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p0}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    move-result-object p0

    invoke-virtual {p0}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    move-result-object p0

    invoke-static {v0, p0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public static synthetic c(Ljava/util/Map;Lcom/byazt/ete/ic;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/byazt/qt/ve;->tt(Ljava/util/Map;Lcom/byazt/ete/ic;)V

    return-void
.end method

.method public static c(Ljava/util/Map;Lcom/byazt/wrq/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/byazt/wrq/c;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "downloadButtonClickListener"

    .line 196
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    return-void

    .line 197
    :cond_1
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method public static c(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "convert_result"

    .line 166
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 167
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object v1

    const-string v4, "success"

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/byazt/ukr/yp;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 168
    :cond_0
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object v5

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v8, "no intercept result"

    move-object v6, v7

    move-object v9, p2

    move-object v10, p3

    invoke-virtual/range {v5 .. v10}, Lcom/byazt/ukr/yp;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static c(ZI)V
    .locals 3

    .line 107
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/omf/x;->nb()Ljava/util/function/Function;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 108
    :cond_0
    new-instance v1, Lcom/byazt/aas/zb;

    invoke-direct {v1}, Lcom/byazt/aas/zb;-><init>()V

    const-string v2, "hashCode"

    .line 109
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object p1

    const-string v1, "isShowToast"

    .line 110
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object p0

    .line 111
    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    move-result-object p1

    const/16 v1, 0x1f

    invoke-virtual {p1, v1}, Lcom/byazt/yxi/uj;->c(I)Lcom/byazt/yxi/uj;

    move-result-object p1

    const-class v1, Ljava/lang/Void;

    invoke-virtual {p1, v1}, Lcom/byazt/yxi/uj;->c(Ljava/lang/Class;)Lcom/byazt/yxi/uj;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p0}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    move-result-object p0

    invoke-virtual {p0}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    move-result-object p0

    invoke-static {v0, p0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static c(ZLcom/byazt/wrq/ve;I)V
    .locals 3

    .line 116
    :try_start_0
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/omf/x;->nb()Ljava/util/function/Function;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 117
    :cond_0
    new-instance v1, Lcom/byazt/aas/zb;

    invoke-direct {v1}, Lcom/byazt/aas/zb;-><init>()V

    const-string v2, "isEnableOppoAutoDownload"

    .line 118
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object p0

    const-string v1, "hashCode"

    .line 119
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, v1, p2}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object p0

    const-string p2, "downloadMarketInterceptor"

    .line 120
    invoke-virtual {p0, p2, p1}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object p0

    .line 121
    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    move-result-object p1

    const/16 p2, 0x1c

    invoke-virtual {p1, p2}, Lcom/byazt/yxi/uj;->c(I)Lcom/byazt/yxi/uj;

    move-result-object p1

    const-class p2, Ljava/lang/Void;

    invoke-virtual {p1, p2}, Lcom/byazt/yxi/uj;->c(Ljava/lang/Class;)Lcom/byazt/yxi/uj;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p0}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    move-result-object p0

    invoke-virtual {p0}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    move-result-object p0

    invoke-static {v0, p0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "xgc_dof"

    const-string p2, "throwable"

    .line 122
    invoke-static {p1, p2, p0}, Lcom/byazt/nr/m;->ve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static c(ZLjava/util/function/Function;Ljava/lang/String;Lcom/byazt/ete/ic;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/function/Function<",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/byazt/ete/ic;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move/from16 v3, p8

    const-string v4, "notification_opt_2"

    if-nez v0, :cond_0

    return-void

    .line 18
    :cond_0
    const-class v5, Ljava/lang/Void;

    const/16 v6, 0x17

    const-string v7, "mateIsEmpty"

    const-string v8, "hashCode"

    const/4 v9, 0x0

    if-eqz p0, :cond_1

    .line 19
    new-instance v1, Lcom/byazt/aas/zb;

    invoke-direct {v1}, Lcom/byazt/aas/zb;-><init>()V

    .line 20
    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object v1

    .line 21
    invoke-static/range {p0 .. p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object v1

    .line 22
    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/byazt/yxi/uj;->c(I)Lcom/byazt/yxi/uj;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/byazt/yxi/uj;->c(Ljava/lang/Class;)Lcom/byazt/yxi/uj;

    move-result-object v2

    invoke-virtual {v2, v9, v1}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    move-result-object v1

    invoke-static {v0, v1}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 23
    :cond_1
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 24
    :try_start_0
    invoke-static {}, Lcom/byazt/qt/tt;->c()Lcom/byazt/qt/tt;

    move-result-object v11

    move-object/from16 v12, p2

    invoke-virtual {v11, v12}, Lcom/byazt/qt/tt;->c(Ljava/lang/String;)Lcom/byazt/qt/tt;

    move-result-object v11

    move-object/from16 v12, p4

    invoke-virtual {v11, v12}, Lcom/byazt/qt/tt;->tt(Lorg/json/JSONObject;)Lcom/byazt/qt/tt;

    move-result-object v11

    invoke-virtual {v11, v1}, Lcom/byazt/qt/tt;->c(Lcom/byazt/ete/ic;)Lcom/byazt/qt/tt;

    move-result-object v11

    const-string v12, "open_ad_sdk_download_extra"

    .line 25
    invoke-virtual {v11}, Lcom/byazt/qt/tt;->tt()Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v10, v12, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 26
    :goto_0
    invoke-virtual/range {p3 .. p3}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Double;->longValue()J

    move-result-wide v11

    .line 27
    invoke-virtual/range {p3 .. p3}, Lcom/byazt/ete/ic;->te()Lcom/byazt/ete/zb;

    move-result-object v13

    if-nez v13, :cond_2

    const/4 v13, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual/range {p3 .. p3}, Lcom/byazt/ete/ic;->te()Lcom/byazt/ete/zb;

    move-result-object v13

    invoke-virtual {v13}, Lcom/byazt/ete/zb;->c()Ljava/lang/String;

    move-result-object v13

    .line 28
    :goto_1
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v14

    invoke-virtual {v14}, Lcom/byazt/omf/x;->h()Z

    move-result v14

    .line 29
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v15

    invoke-virtual {v15}, Lcom/byazt/omf/x;->h()Z

    move-result v15

    const/4 v6, 0x1

    xor-int/2addr v15, v6

    .line 30
    invoke-virtual/range {p3 .. p3}, Lcom/byazt/ete/ic;->w_()Ljava/lang/String;

    move-result-object v6

    .line 31
    invoke-static {}, Lcom/byazt/yih/i;->c()Lorg/json/JSONObject;

    move-result-object v9

    .line 32
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v16, v5

    move-object/from16 v17, v8

    const/4 v5, 0x0

    .line 33
    :try_start_1
    invoke-virtual {v9, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    const/4 v5, 0x1

    if-eq v8, v5, :cond_3

    const/4 v8, 0x0

    .line 34
    :cond_3
    invoke-static/range {p3 .. p3}, Lcom/byazt/ete/gt;->m(Lcom/byazt/ete/ic;)I

    move-result v5

    .line 35
    invoke-static {}, Lcom/byazt/omf/p;->x()Z

    move-result v18
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    if-nez v18, :cond_4

    move-object/from16 v18, v10

    :try_start_2
    const-string v10, "cancel_pause_optimise_switch"

    .line 36
    invoke-virtual {v0, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v10, "cancel_pause_optimise_wifi_retain_switch"

    .line 37
    invoke-virtual {v0, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v10, "cancel_pause_optimise_apk_retain_switch"

    .line 38
    invoke-virtual {v0, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v10, "cancel_pause_optimise_download_percent_retain_switch"

    .line 39
    invoke-virtual {v0, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    nop

    move-object/from16 p2, v6

    goto :goto_5

    :cond_4
    move-object/from16 v18, v10

    :goto_2
    :try_start_3
    const-string v10, "show_pause_continue_toast"

    .line 40
    invoke-virtual {v0, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    const-string v10, "download_start_toast_text"

    move-object/from16 p2, v6

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    .line 41
    :try_start_4
    invoke-static {v6, v3}, Lcom/byazt/qt/ve;->c(ZI)V

    const-string v5, "\u5df2\u5f00\u59cb\u4e0b\u8f7d\uff0c\u518d\u6b21\u70b9\u51fb\u53ef\u6682\u505c\u6216\u53d6\u6d88\u8be5\u4e0b\u8f7d\u4efb\u52a1\u3002"

    .line 42
    invoke-virtual {v9, v10, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 43
    invoke-virtual {v0, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 44
    :cond_5
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/byazt/ogz/sl;->jg()Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x1

    .line 45
    invoke-static {v5, v3}, Lcom/byazt/qt/ve;->c(ZI)V

    const-string v6, "\u4e0b\u8f7d\u4e2d\uff0c\u53ef\u5728\u901a\u77e5\u680f\u6682\u505c\u6216\u53d6\u6d88"

    const-string v9, "enable_notification_ui"

    .line 46
    invoke-virtual {v0, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 47
    invoke-virtual {v0, v10, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    :cond_6
    :goto_3
    invoke-virtual {v0, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "is_use_obm_convert"

    .line 49
    invoke-static/range {p3 .. p3}, Lcom/byazt/ete/gt;->tt(Lcom/byazt/ete/ic;)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_5

    :catch_2
    move-object/from16 p2, v6

    goto :goto_4

    :catch_3
    move-object/from16 p2, v6

    move-object/from16 v18, v10

    :catch_4
    :goto_4
    nop

    .line 50
    :goto_5
    invoke-virtual/range {p3 .. p3}, Lcom/byazt/ete/ic;->yp()Lcom/byazt/ete/nu;

    move-result-object v4

    const-string v5, ""

    if-eqz v4, :cond_9

    .line 51
    invoke-virtual/range {p3 .. p3}, Lcom/byazt/ete/ic;->yp()Lcom/byazt/ete/nu;

    move-result-object v4

    invoke-virtual {v4}, Lcom/byazt/ete/nu;->tt()Ljava/lang/String;

    move-result-object v4

    .line 52
    invoke-virtual/range {p3 .. p3}, Lcom/byazt/ete/ic;->v_()Ljava/lang/String;

    move-result-object v6

    .line 53
    invoke-virtual/range {p3 .. p3}, Lcom/byazt/ete/ic;->yp()Lcom/byazt/ete/nu;

    move-result-object v8

    invoke-virtual {v8}, Lcom/byazt/ete/nu;->n()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_7

    .line 54
    invoke-static/range {p3 .. p3}, Lcom/byazt/ete/ic;->ve(Lcom/byazt/ete/ic;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 55
    :cond_7
    invoke-virtual/range {p3 .. p3}, Lcom/byazt/ete/ic;->yp()Lcom/byazt/ete/nu;

    move-result-object v5

    invoke-virtual {v5}, Lcom/byazt/ete/nu;->n()I

    move-result v5

    const/4 v8, 0x1

    if-ne v5, v8, :cond_8

    .line 56
    invoke-virtual/range {p3 .. p3}, Lcom/byazt/ete/ic;->yp()Lcom/byazt/ete/nu;

    move-result-object v5

    invoke-virtual {v5}, Lcom/byazt/ete/nu;->uj()Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    .line 57
    :cond_8
    invoke-virtual/range {p3 .. p3}, Lcom/byazt/ete/ic;->x()Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    .line 58
    :cond_9
    invoke-virtual/range {p3 .. p3}, Lcom/byazt/ete/ic;->x()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    move-object v5, v4

    move-object v4, v6

    .line 59
    :cond_a
    :goto_6
    sget v8, Lcom/byazt/omf/p;->uj:I

    const/16 v9, 0x1b58

    if-lt v8, v9, :cond_c

    const/16 v9, 0x1c84

    if-ge v8, v9, :cond_c

    .line 60
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/byazt/nr/gt;->c(Landroid/content/Context;)Z

    move-result v8

    .line 61
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v9

    invoke-virtual {v9}, Lcom/byazt/ogz/sl;->zm()Z

    move-result v9

    if-eqz v8, :cond_b

    goto :goto_7

    .line 62
    :cond_b
    invoke-static {}, Lcom/byazt/ue/tt;->c()Z

    move-result v9

    goto :goto_7

    .line 63
    :cond_c
    invoke-static {}, Lcom/byazt/ue/tt;->c()Z

    move-result v9

    :goto_7
    const/4 v8, 0x0

    .line 64
    invoke-static {v1, v2, v8}, Lcom/byazt/wz/x;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    .line 65
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_d

    .line 66
    invoke-static/range {p3 .. p3}, Lcom/byazt/ete/gt;->yp(Lcom/byazt/ete/ic;)I

    move-result v1

    .line 67
    invoke-static {v1, v0}, Lcom/byazt/wz/x;->c(ILorg/json/JSONObject;)V

    .line 68
    :cond_d
    new-instance v1, Lcom/byazt/aas/zb;

    invoke-direct {v1}, Lcom/byazt/aas/zb;-><init>()V

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 69
    invoke-virtual {v1, v7, v8}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object v1

    const-string v7, "id"

    .line 70
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object v1

    const-string v7, "appIcon"

    .line 71
    invoke-virtual {v1, v7, v13}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object v1

    const-string v7, "isShowNotification"

    .line 72
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object v1

    const-string v7, "isAutoInstallWithoutNotification"

    .line 73
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object v1

    const-string v7, "logExtra"

    move-object/from16 v8, p2

    .line 74
    invoke-virtual {v1, v7, v8}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object v1

    const-string v7, "extraJson"

    move-object/from16 v8, v18

    .line 75
    invoke-virtual {v1, v7, v8}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object v1

    const-string v7, "downloadSettings"

    .line 76
    invoke-virtual {v1, v7, v0}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object v0

    const-string v1, "filePath"

    .line 77
    invoke-virtual {v0, v1, v10}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object v0

    const-string v1, "appName"

    move-object/from16 v7, p6

    .line 78
    invoke-virtual {v0, v1, v7}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object v0

    const-string v1, "downloadUrl"

    .line 79
    invoke-virtual {v0, v1, v2}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object v0

    const-string v1, "packageName"

    move-object/from16 v2, p7

    .line 80
    invoke-virtual {v0, v1, v2}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object v0

    const-string v1, "isNeedIndependentProcess"

    .line 81
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object v0

    const-string v1, "openUrl"

    .line 82
    invoke-virtual {v0, v1, v4}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object v0

    const-string v1, "webTitle"

    .line 83
    invoke-virtual {v0, v1, v6}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object v0

    .line 84
    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, v17

    invoke-virtual {v0, v2, v1}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object v0

    const-string v1, "webUrl"

    .line 85
    invoke-virtual {v0, v1, v5}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object v0

    .line 86
    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    move-result-object v1

    const/16 v2, 0x17

    invoke-virtual {v1, v2}, Lcom/byazt/yxi/uj;->c(I)Lcom/byazt/yxi/uj;

    move-result-object v1

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Lcom/byazt/yxi/uj;->c(Ljava/lang/Class;)Lcom/byazt/yxi/uj;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static c(Landroid/net/Uri;Lcom/byazt/ete/ic;Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 2

    .line 151
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/omf/x;->nb()Ljava/util/function/Function;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 152
    invoke-static {p3, p1, v0, p4}, Lcom/byazt/qt/ve;->c(Ljava/lang/String;Lcom/byazt/ete/ic;Lorg/json/JSONObject;I)V

    .line 153
    invoke-static {p1, p4, v1}, Lcom/byazt/qt/ve;->c(Lcom/byazt/ete/ic;IZ)V

    .line 154
    invoke-static {p3, p4}, Lcom/byazt/qt/ve;->c(Ljava/lang/String;I)V

    .line 155
    new-instance v0, Lcom/byazt/aas/zb;

    invoke-direct {v0}, Lcom/byazt/aas/zb;-><init>()V

    const-string v1, "hashCode"

    .line 156
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {v0, v1, p4}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object p4

    const-string v0, "activity"

    .line 157
    invoke-virtual {p4, v0, p2}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object p4

    .line 158
    invoke-static {p1}, Lcom/byazt/ete/gt;->my(Lcom/byazt/ete/ic;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "open_market_in_app"

    invoke-virtual {p4, v1, v0}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object p4

    const-string v0, "uri"

    .line 159
    invoke-virtual {p4, v0, p0}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object p0

    .line 160
    new-instance p4, Lcom/byazt/yzg/ve;

    invoke-direct {p4, p2, p1}, Lcom/byazt/yzg/ve;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;)V

    .line 161
    new-instance p2, Lcom/byazt/yzg/n;

    invoke-direct {p2}, Lcom/byazt/yzg/n;-><init>()V

    invoke-virtual {p4, p2}, Lcom/byazt/yzg/ve;->c(Lcom/byazt/yzg/c;)V

    .line 162
    invoke-static {p1, p3, p0, p4}, Lcom/byazt/qt/ve;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/util/Map;Lcom/byazt/yzg/ve;)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_1

    return p3

    .line 163
    :cond_1
    invoke-static {p0, p1}, Lcom/byazt/qt/ve;->tt(Ljava/util/Map;Lcom/byazt/ete/ic;)V

    return p3

    :cond_2
    :goto_0
    return v1
.end method

.method private static c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/util/Map;Lcom/byazt/yzg/ve;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/ete/ic;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/byazt/yzg/ve;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 164
    invoke-virtual {p3, v0}, Lcom/byazt/yzg/ve;->uj(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    new-instance v0, Lcom/byazt/qt/ve$2;

    invoke-direct {v0, p2, p0}, Lcom/byazt/qt/ve$2;-><init>(Ljava/util/Map;Lcom/byazt/ete/ic;)V

    invoke-virtual {p3, p1, v0}, Lcom/byazt/yzg/ve;->c(Ljava/lang/String;Lcom/byazt/av/tt;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/ete/ic;I)Z
    .locals 4

    .line 198
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/omf/x;->nb()Ljava/util/function/Function;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 199
    :cond_0
    new-instance v2, Lcom/byazt/aas/zb;

    invoke-direct {v2}, Lcom/byazt/aas/zb;-><init>()V

    const-string v3, "tagIntercept"

    .line 200
    invoke-virtual {v2, v3, p0}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object p0

    const-string v2, "label"

    .line 201
    invoke-virtual {p0, v2, p1}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object p0

    const-string p1, "hashCode"

    .line 202
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p1, p3}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object p0

    .line 203
    invoke-virtual {p2}, Lcom/byazt/ete/ic;->yg()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "meta"

    invoke-virtual {p0, p2, p1}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object p0

    .line 204
    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    move-result-object p1

    const/4 p2, 0x2

    .line 205
    invoke-virtual {p1, p2}, Lcom/byazt/yxi/uj;->c(I)Lcom/byazt/yxi/uj;

    move-result-object p1

    const-class p2, Ljava/lang/Boolean;

    .line 206
    invoke-virtual {p1, p2}, Lcom/byazt/yxi/uj;->c(Ljava/lang/Class;)Lcom/byazt/yxi/uj;

    move-result-object p1

    .line 207
    invoke-virtual {p1, v1, p0}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    move-result-object p0

    .line 208
    invoke-virtual {p0}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    move-result-object p0

    .line 209
    invoke-static {v0, p0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 210
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public static tt(II)V
    .locals 3

    .line 3
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/omf/x;->nb()Ljava/util/function/Function;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v1, Lcom/byazt/aas/zb;

    invoke-direct {v1}, Lcom/byazt/aas/zb;-><init>()V

    const-string v2, "hashCode"

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object p1

    const-string v1, "downloadScene"

    .line 6
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object p0

    .line 7
    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    move-result-object p1

    const/16 v1, 0x1e

    invoke-virtual {p1, v1}, Lcom/byazt/yxi/uj;->c(I)Lcom/byazt/yxi/uj;

    move-result-object p1

    const-class v1, Ljava/lang/Void;

    invoke-virtual {p1, v1}, Lcom/byazt/yxi/uj;->c(Ljava/lang/Class;)Lcom/byazt/yxi/uj;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p0}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    move-result-object p0

    invoke-virtual {p0}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    move-result-object p0

    invoke-static {v0, p0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static tt(Ljava/util/Map;Lcom/byazt/ete/ic;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/byazt/ete/ic;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/byazt/qt/ve$3;

    invoke-direct {v0, p0}, Lcom/byazt/qt/ve$3;-><init>(Ljava/util/Map;)V

    .line 2
    invoke-static {v0, p1}, Lcom/byazt/yih/i;->c(Ljava/lang/Runnable;Lcom/byazt/eia/sp;)V

    return-void
.end method
