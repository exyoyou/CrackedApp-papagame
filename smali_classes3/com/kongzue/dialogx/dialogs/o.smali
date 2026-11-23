.class public Lcom/kongzue/dialogx/dialogs/o;
.super Lcom/kongzue/dialogx/dialogs/WaitDialog;
.source "SourceFile"


# static fields
.field public static final V1:I = -0x1


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static B3(Landroid/app/Activity;I)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->o2(Landroid/app/Activity;)Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_1

    .line 6
    .line 7
    sget-object v0, Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;->WARNING:Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;

    .line 8
    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->p3(ILcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->j2()Lcom/kongzue/dialogx/dialogs/WaitDialog$h;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->v3()Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->Y1()V

    .line 23
    .line 24
    .line 25
    :goto_0
    return-object p0

    .line 26
    :cond_1
    invoke-static {}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->x2()Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method

.method public static D3(Landroid/app/Activity;Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->o2(Landroid/app/Activity;)Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_1

    .line 6
    .line 7
    sget-object v0, Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;->WARNING:Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;

    .line 8
    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->r3(Ljava/lang/CharSequence;Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->j2()Lcom/kongzue/dialogx/dialogs/WaitDialog$h;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->v3()Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->Y1()V

    .line 23
    .line 24
    .line 25
    :goto_0
    return-object p0

    .line 26
    :cond_1
    invoke-static {}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->x2()Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method

.method public static F3(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p0}, Lcom/kongzue/dialogx/dialogs/o;->D3(Landroid/app/Activity;Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public static M3(Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->M3(Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;)Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static l4(ILcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p0, p1}, Lcom/kongzue/dialogx/dialogs/o;->n4(Landroid/app/Activity;ILcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;)Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public static m4(ILcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;J)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p0, p1, p2, p3}, Lcom/kongzue/dialogx/dialogs/o;->o4(Landroid/app/Activity;ILcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;J)Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public static n4(Landroid/app/Activity;ILcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->o2(Landroid/app/Activity;)Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->p3(ILcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->j2()Lcom/kongzue/dialogx/dialogs/WaitDialog$h;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->v3()Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->Y1()V

    .line 21
    .line 22
    .line 23
    :goto_0
    return-object p0

    .line 24
    :cond_1
    invoke-static {}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->x2()Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method public static o4(Landroid/app/Activity;ILcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;J)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->o2(Landroid/app/Activity;)Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->p3(ILcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p3, p4}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->s3(J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->j2()Lcom/kongzue/dialogx/dialogs/WaitDialog$h;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->v3()Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->Y1()V

    .line 24
    .line 25
    .line 26
    :goto_0
    return-object p0

    .line 27
    :cond_1
    invoke-static {}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->x2()Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method

.method public static p4(Landroid/app/Activity;Ljava/lang/CharSequence;Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->o2(Landroid/app/Activity;)Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->r3(Ljava/lang/CharSequence;Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->j2()Lcom/kongzue/dialogx/dialogs/WaitDialog$h;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->v3()Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->Y1()V

    .line 21
    .line 22
    .line 23
    :goto_0
    return-object p0

    .line 24
    :cond_1
    invoke-static {}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->x2()Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method public static q4(Landroid/app/Activity;Ljava/lang/CharSequence;Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;J)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->o2(Landroid/app/Activity;)Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->r3(Ljava/lang/CharSequence;Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p3, p4}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->s3(J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->j2()Lcom/kongzue/dialogx/dialogs/WaitDialog$h;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->v3()Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->Y1()V

    .line 24
    .line 25
    .line 26
    :goto_0
    return-object p0

    .line 27
    :cond_1
    invoke-static {}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->x2()Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method

.method public static r4(Ljava/lang/CharSequence;Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p0, p1}, Lcom/kongzue/dialogx/dialogs/o;->p4(Landroid/app/Activity;Ljava/lang/CharSequence;Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;)Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public static s4(Ljava/lang/CharSequence;Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;J)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p0, p1, p2, p3}, Lcom/kongzue/dialogx/dialogs/o;->q4(Landroid/app/Activity;Ljava/lang/CharSequence;Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;J)Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public static x3(I)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p0}, Lcom/kongzue/dialogx/dialogs/o;->B3(Landroid/app/Activity;I)Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method


# virtual methods
.method public bridge synthetic A2(Lcom/kongzue/dialogx/interfaces/i;)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/o;->T3(Lcom/kongzue/dialogx/interfaces/i;)Lcom/kongzue/dialogx/dialogs/o;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic B2(Lcom/kongzue/dialogx/interfaces/i;)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/o;->U3(Lcom/kongzue/dialogx/interfaces/i;)Lcom/kongzue/dialogx/dialogs/o;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic F0(Ljava/lang/String;Ljava/lang/Object;)Lcom/kongzue/dialogx/interfaces/BaseDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/o;->X3(Ljava/lang/String;Ljava/lang/Object;)Lcom/kongzue/dialogx/dialogs/o;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic F2(ILcom/kongzue/dialogx/interfaces/i;)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/o;->V3(ILcom/kongzue/dialogx/interfaces/i;)Lcom/kongzue/dialogx/dialogs/o;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic I0(Z)Lcom/kongzue/dialogx/interfaces/BaseDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/o;->a4(Z)Lcom/kongzue/dialogx/dialogs/o;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic J2(Z)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/o;->W3(Z)Lcom/kongzue/dialogx/dialogs/o;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic L0(I)Lcom/kongzue/dialogx/interfaces/BaseDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/o;->k4(I)Lcom/kongzue/dialogx/dialogs/o;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic M2(Ljava/lang/String;Ljava/lang/Object;)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/o;->X3(Ljava/lang/String;Ljava/lang/Object;)Lcom/kongzue/dialogx/dialogs/o;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic O2(Lcom/kongzue/dialogx/DialogX$IMPL_MODE;)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/o;->Y3(Lcom/kongzue/dialogx/DialogX$IMPL_MODE;)Lcom/kongzue/dialogx/dialogs/o;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public O3(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/o;
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->T:Ljava/lang/CharSequence;

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    aput-object p1, v0, v1

    .line 11
    .line 12
    invoke-static {v0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->T:Ljava/lang/CharSequence;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->x0()V

    .line 19
    .line 20
    .line 21
    return-object p0
.end method

.method public P3(Landroidx/lifecycle/LifecycleOwner;)Lcom/kongzue/dialogx/dialogs/o;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->f(Landroidx/lifecycle/LifecycleOwner;)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public bridge synthetic Q2(Lcom/kongzue/dialogx/interfaces/g;)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/o;->Z3(Lcom/kongzue/dialogx/interfaces/g;)Lcom/kongzue/dialogx/dialogs/o;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public Q3()Lcom/kongzue/dialogx/dialogs/o;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->F()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/kongzue/dialogx/dialogs/o;->k4(I)Lcom/kongzue/dialogx/dialogs/o;

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public bridge synthetic R2(Z)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/o;->a4(Z)Lcom/kongzue/dialogx/dialogs/o;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public R3(I)Lcom/kongzue/dialogx/dialogs/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->p:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public S3()Lcom/kongzue/dialogx/dialogs/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->p:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public T3(Lcom/kongzue/dialogx/interfaces/i;)Lcom/kongzue/dialogx/dialogs/o;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/i<",
            "Lcom/kongzue/dialogx/dialogs/WaitDialog;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/o;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->m:Lcom/kongzue/dialogx/interfaces/i;

    .line 2
    .line 3
    return-object p0
.end method

.method public bridge synthetic U1(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/o;->O3(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/o;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public U3(Lcom/kongzue/dialogx/interfaces/i;)Lcom/kongzue/dialogx/dialogs/o;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/i<",
            "Lcom/kongzue/dialogx/dialogs/WaitDialog;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/o;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->l:Lcom/kongzue/dialogx/interfaces/i;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->m0()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->l:Lcom/kongzue/dialogx/interfaces/i;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-interface {p1, p0}, Lcom/kongzue/dialogx/interfaces/i;->run(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-object p0
.end method

.method public bridge synthetic V1(Landroidx/lifecycle/LifecycleOwner;)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/o;->P3(Landroidx/lifecycle/LifecycleOwner;)Lcom/kongzue/dialogx/dialogs/o;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public V3(ILcom/kongzue/dialogx/interfaces/i;)Lcom/kongzue/dialogx/dialogs/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/kongzue/dialogx/interfaces/i<",
            "Lcom/kongzue/dialogx/dialogs/WaitDialog;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/o;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->p:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public bridge synthetic W1()Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/o;->Q3()Lcom/kongzue/dialogx/dialogs/o;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public W3(Z)Lcom/kongzue/dialogx/dialogs/o;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->M:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public bridge synthetic X2(I)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/o;->b4(I)Lcom/kongzue/dialogx/dialogs/o;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public X3(Ljava/lang/String;Ljava/lang/Object;)Lcom/kongzue/dialogx/dialogs/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->k:Ljava/util/Map;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->k:Ljava/util/Map;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->k:Ljava/util/Map;

    .line 13
    .line 14
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    return-object p0
.end method

.method public bridge synthetic Y2(I)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/o;->c4(I)Lcom/kongzue/dialogx/dialogs/o;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public Y3(Lcom/kongzue/dialogx/DialogX$IMPL_MODE;)Lcom/kongzue/dialogx/dialogs/o;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->g:Lcom/kongzue/dialogx/DialogX$IMPL_MODE;

    .line 2
    .line 3
    return-object p0
.end method

.method public bridge synthetic Z1(I)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/o;->R3(I)Lcom/kongzue/dialogx/dialogs/o;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public Z3(Lcom/kongzue/dialogx/interfaces/g;)Lcom/kongzue/dialogx/dialogs/o;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/g<",
            "Lcom/kongzue/dialogx/dialogs/WaitDialog;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/o;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->R:Lcom/kongzue/dialogx/interfaces/g;

    .line 2
    .line 3
    return-object p0
.end method

.method public bridge synthetic a2()Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/o;->S3()Lcom/kongzue/dialogx/dialogs/o;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public a4(Z)Lcom/kongzue/dialogx/dialogs/o;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->n:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public b4(I)Lcom/kongzue/dialogx/dialogs/o;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->z:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public c4(I)Lcom/kongzue/dialogx/dialogs/o;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->y:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public d4(I)Lcom/kongzue/dialogx/dialogs/o;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->B:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public bridge synthetic e3(I)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/o;->d4(I)Lcom/kongzue/dialogx/dialogs/o;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public e4(I)Lcom/kongzue/dialogx/dialogs/o;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->A:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public bridge synthetic f3(I)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/o;->e4(I)Lcom/kongzue/dialogx/dialogs/o;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public f4(Lcom/kongzue/dialogx/interfaces/p;)Lcom/kongzue/dialogx/dialogs/o;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/p<",
            "Lcom/kongzue/dialogx/dialogs/WaitDialog;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/o;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->S:Lcom/kongzue/dialogx/interfaces/p;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public bridge synthetic g3(Lcom/kongzue/dialogx/interfaces/p;)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/o;->f4(Lcom/kongzue/dialogx/interfaces/p;)Lcom/kongzue/dialogx/dialogs/o;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public g4(Lcom/kongzue/dialogx/interfaces/q;)Lcom/kongzue/dialogx/dialogs/o;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/q<",
            "Lcom/kongzue/dialogx/dialogs/WaitDialog;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/o;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->b1:Lcom/kongzue/dialogx/interfaces/q;

    .line 2
    .line 3
    return-object p0
.end method

.method public h()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->c2()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic h3(Lcom/kongzue/dialogx/interfaces/q;)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/o;->g4(Lcom/kongzue/dialogx/interfaces/q;)Lcom/kongzue/dialogx/dialogs/o;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public h4(F)Lcom/kongzue/dialogx/dialogs/o;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->Q:F

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public i4(I)Lcom/kongzue/dialogx/dialogs/o;
    .locals 0

    .line 1
    filled-new-array {p1, p1, p1, p1}, [I

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C:[I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->x0()V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public bridge synthetic j3(F)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/o;->h4(F)Lcom/kongzue/dialogx/dialogs/o;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public j4(IIII)Lcom/kongzue/dialogx/dialogs/o;
    .locals 0

    .line 1
    filled-new-array {p1, p2, p3, p4}, [I

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C:[I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->x0()V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public bridge synthetic k3(I)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/o;->i4(I)Lcom/kongzue/dialogx/dialogs/o;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public k4(I)Lcom/kongzue/dialogx/dialogs/o;
    .locals 1

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->o:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    int-to-float p1, p1

    .line 14
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationZ(F)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-object p0
.end method

.method public bridge synthetic l3(IIII)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/kongzue/dialogx/dialogs/o;->j4(IIII)Lcom/kongzue/dialogx/dialogs/o;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public n()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, "("

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ")"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0
.end method

.method public bridge synthetic o3(I)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/o;->k4(I)Lcom/kongzue/dialogx/dialogs/o;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public t2()Lcom/kongzue/dialogx/interfaces/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kongzue/dialogx/interfaces/q<",
            "Lcom/kongzue/dialogx/dialogs/WaitDialog;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->b1:Lcom/kongzue/dialogx/interfaces/q;

    .line 2
    .line 3
    return-object v0
.end method

.method public v2()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->Q:F

    .line 2
    .line 3
    return v0
.end method

.method public y2()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->M:Z

    .line 2
    .line 3
    return v0
.end method
