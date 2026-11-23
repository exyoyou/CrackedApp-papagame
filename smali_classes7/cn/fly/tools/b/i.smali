.class public Lcn/fly/tools/b/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/fly/tools/b/i$a;
    }
.end annotation


# direct methods
.method private static a()Landroid/os/Parcelable$Creator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/Parcelable$Creator<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "025bcLbabhbibgbabjOe*bi(abg9bgbiCcHbjdcbiMabgTbgbiSc"

    .line 49
    invoke-static {v0}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/fly/tools/utils/ReflectHelper;->importClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "007 cbehegdbdaefeh"

    invoke-static {v1}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/fly/tools/utils/ReflectHelper;->getStaticField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable$Creator;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    invoke-static {}, Lcn/fly/commons/e;->f()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_a

    .line 2
    invoke-static {}, Lcn/fly/tools/utils/e;->a()Lcn/fly/tools/utils/e;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcn/fly/tools/utils/e;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v3

    .line 3
    :cond_0
    invoke-static {}, Lcn/fly/tools/utils/DH$SyncMtd;->getOSVersionIntForFly()I

    move-result v2

    const/16 v4, 0x17

    if-ge v2, v4, :cond_1

    return-object v3

    .line 4
    :cond_1
    invoke-static/range {p0 .. p0}, Lcn/fly/tools/a/f;->a(Landroid/content/Context;)Lcn/fly/tools/a/f;

    move-result-object v2

    .line 5
    invoke-static {}, Lcn/fly/tools/utils/DH$SyncMtd;->getOSVersionIntForFly()I

    move-result v4

    const-class v13, Ljava/lang/String;

    const/16 v14, 0x1f

    const-string v15, "$"

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    if-lt v4, v14, :cond_4

    const-string v4, "036bc8babhbibgbabjXe@bi8abg1bgbi2cCbjdc8b1dg;g1dcbiGabg+bgbiNcUeh$dRbcbe.dIdg g"

    .line 6
    invoke-static {v4}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcn/fly/tools/a/f;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    if-nez v4, :cond_2

    return-object v3

    .line 7
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "036bc@babhbibgbabjJeVbiJabgXbgbiAcEbjdc-bIdg5gXdcbiLabg<bgbiBc]eh-dCbcbe9d]dg1g"

    invoke-static {v6}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "007>dhbebg:eBba.dUbh"

    invoke-static {v6}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 9
    invoke-virtual {v2, v5}, Lcn/fly/tools/a/f;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 10
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "036bc8babhbibgbabjVe%bi4abg8bgbiNc5bjdc@b-dgRg7dcbi4abgGbgbi*cTeh4dDbcbe)dQdg*g"

    invoke-static {v6}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "007)dhbebgNeUba!d9bh"

    invoke-static {v6}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v5, "0058ddbebgRe0ba"

    .line 12
    invoke-static {v5}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v5, v2

    const/4 v14, 0x0

    move-object/from16 v10, v16

    move-object v11, v4

    const/4 v4, 0x2

    move-object/from16 v12, v17

    .line 13
    invoke-virtual/range {v5 .. v12}, Lcn/fly/tools/a/f;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    :cond_3
    const/4 v4, 0x2

    const/4 v14, 0x0

    move-object v5, v3

    :goto_0
    move-object/from16 v16, v5

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x2

    const/4 v14, 0x0

    const-string v5, "036bcXbabhbibgbabjEeZbi abg,bgbi5cDbjdc8b5dgHg1dcbi9abg bgbi_cJeh\'dSbcbe!dWdgAg"

    .line 14
    invoke-static {v5}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcn/fly/tools/a/f;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    if-nez v11, :cond_5

    return-object v3

    :cond_5
    const-string v5, "032bcHbabhbibgbabjZe2bi8abg;bgbi1cZbjdcbiQabgSbgbi cXeh8dSbcbe8dTdgKg"

    .line 15
    invoke-static {v5}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v5, "028a;bh;dbgdBeabhbibddjSdhWbh;dabgdNbaejbhbibbbgba8dRbh"

    .line 16
    invoke-static {v5}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v5, 0x4

    new-array v9, v5, [Ljava/lang/Class;

    aput-object v13, v9, v14

    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v12, 0x1

    aput-object v10, v9, v12

    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v4

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v16, 0x3

    aput-object v10, v9, v16

    new-array v10, v5, [Ljava/lang/Object;

    aput-object v0, v10, v14

    .line 17
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v10, v12

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v10, v4

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v5, v10, v16

    const/16 v16, 0x0

    move-object v5, v2

    const/4 v4, 0x1

    move-object/from16 v12, v16

    .line 18
    invoke-virtual/range {v5 .. v12}, Lcn/fly/tools/a/f;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v16, v5

    .line 19
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "033bc,babhbibgbabj\'eJbi0abgUbgbi-c.bjccdcbiVabgQbgbiXcSfa9bcb<ch_d+bh"

    invoke-static {v6}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "0045cj%g@bedd"

    .line 20
    invoke-static {v6}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v5, "027Jdaehdbcecjdbcbdaccefcebfch)dg dc@b+dg>g;dcbi9abgSbgbi0c"

    .line 21
    invoke-static {v5}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object v5, v2

    move-object v9, v15

    .line 22
    invoke-virtual/range {v5 .. v10}, Lcn/fly/tools/a/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-gtz v12, :cond_6

    return-object v3

    :cond_6
    const-string v5, "025bc8babhbibgbabjbidgbjcj<d,bhbbbgJad6faYbcbWch9dZbh"

    .line 23
    invoke-static {v5}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v5, "010Pch$dg_cj1dLbhbbbgVad"

    invoke-static {v5}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-array v9, v4, [Ljava/lang/Class;

    aput-object v13, v9, v14

    new-array v10, v4, [Ljava/lang/Object;

    const-string v5, "008e7biKabgGbgbi1c"

    .line 24
    invoke-static {v5}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v10, v14

    const-class v11, Landroid/os/IBinder;

    const/4 v13, 0x0

    move-object v5, v2

    move v3, v12

    move-object v12, v13

    .line 25
    invoke-virtual/range {v5 .. v12}, Lcn/fly/tools/a/f;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v13, v5

    check-cast v13, Landroid/os/IBinder;

    if-eqz v16, :cond_9

    if-eqz v13, :cond_9

    .line 26
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v12

    .line 27
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v11

    :try_start_0
    const-string v5, "033bcQbabhbibgbabjRe.bi0abgHbgbi)c_bjccdcbiPabg^bgbi*cCfaFbcbGchQd\'bh"

    .line 28
    invoke-static {v5}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lcn/fly/tools/utils/DH$SyncMtd;->getOSVersionIntForFly()I

    move-result v5

    const/16 v6, 0x1f

    if-lt v5, v6, :cond_7

    .line 30
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 31
    move-object/from16 v0, v16

    check-cast v0, Landroid/os/Parcelable;

    invoke-static {v12, v0, v14}, Lcn/fly/tools/b/p;->a(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    move-object v2, v11

    move-object v15, v12

    goto :goto_2

    .line 32
    :cond_7
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 33
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v0, "013+debhbg6gdUdabiej0bJbh)ade"

    invoke-static {v0}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v0, 0x2

    new-array v9, v0, [Ljava/lang/Class;

    const-class v5, Landroid/os/Parcel;

    aput-object v5, v9, v14

    aput-object v15, v9, v4

    new-array v10, v0, [Ljava/lang/Object;

    aput-object v12, v10, v14

    .line 34
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v10, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    const/4 v4, 0x0

    move-object v5, v2

    move-object/from16 v7, v16

    move-object v2, v11

    move-object v11, v0

    move-object v15, v12

    move-object v12, v4

    .line 35
    :try_start_1
    invoke-virtual/range {v5 .. v12}, Lcn/fly/tools/a/f;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    invoke-static {}, Lcn/fly/tools/utils/DH$SyncMtd;->getOSVersionIntForFly()I

    move-result v0

    const/16 v4, 0x1e

    if-lt v0, v4, :cond_8

    .line 38
    invoke-static/range {p0 .. p0}, Lcn/fly/tools/b/q;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    :cond_8
    invoke-interface {v13, v3, v15, v2, v14}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 40
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 41
    invoke-static {}, Lcn/fly/tools/b/i;->a()Landroid/os/Parcelable$Creator;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/fly/tools/b/r;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    invoke-static/range {p0 .. p0}, Lcn/fly/tools/a/f;->a(Landroid/content/Context;)Lcn/fly/tools/a/f;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcn/fly/tools/a/f;->b(Landroid/content/Context;)Z

    .line 43
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 44
    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v2, v11

    move-object v15, v12

    .line 45
    :goto_3
    invoke-static/range {p0 .. p0}, Lcn/fly/tools/a/f;->a(Landroid/content/Context;)Lcn/fly/tools/a/f;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcn/fly/tools/a/f;->b(Landroid/content/Context;)Z

    .line 46
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 47
    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V

    .line 48
    throw v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_4

    :cond_a
    move-object v0, v3

    :goto_4
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/Object;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 50
    invoke-static {}, Lcn/fly/commons/e;->e()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_f

    .line 51
    invoke-static {}, Lcn/fly/tools/utils/e;->a()Lcn/fly/tools/utils/e;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcn/fly/tools/utils/e;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v3

    .line 52
    :cond_0
    invoke-static {}, Lcn/fly/tools/utils/DH$SyncMtd;->getOSVersionIntForFly()I

    move-result v2

    const/16 v4, 0x17

    if-ge v2, v4, :cond_1

    return-object v3

    .line 53
    :cond_1
    invoke-static/range {p0 .. p0}, Lcn/fly/tools/a/f;->a(Landroid/content/Context;)Lcn/fly/tools/a/f;

    move-result-object v2

    .line 54
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    const/4 v13, 0x1

    invoke-direct {v4, v13}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-array v14, v13, [Ljava/lang/Object;

    .line 55
    invoke-static {}, Lcn/fly/FlySDK;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcn/fly/tools/a/f;->a(Landroid/content/Context;)Lcn/fly/tools/a/f;

    move-result-object v5

    const-string v6, "032bc8babhbibgbabj:eKbiUabg>bgbi!c?bjdcbi?abg;bgbiCc_eh\'d4bcbe<d,dgCg"

    .line 56
    invoke-static {v6}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcn/fly/tools/a/f;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    if-nez v11, :cond_2

    return-object v3

    .line 57
    :cond_2
    invoke-static {}, Lcn/fly/tools/utils/DH$SyncMtd;->getOSVersionIntForFly()I

    move-result v5

    const-class v15, Ljava/lang/String;

    const/16 v12, 0x1f

    const/4 v10, 0x3

    const-string v9, "$"

    const/4 v7, 0x0

    if-lt v5, v12, :cond_4

    .line 58
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "032bcEbabhbibgbabj2e.bi0abgVbgbi<cPbjdcbi9abg9bgbi[cKeh1d2bcbeEdSdg4g"

    invoke-static {v6}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "007]dhbebg9eDbaWd8bh"

    .line 59
    invoke-static {v6}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v13, [Ljava/lang/Class;

    sget-object v16, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v16, v6, v7

    new-array v8, v13, [Ljava/lang/Object;

    const-wide/16 v17, 0x0

    .line 60
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v8, v7

    .line 61
    invoke-virtual {v2, v5, v6, v8}, Lcn/fly/tools/a/f;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 62
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "032bcMbabhbibgbabj%eJbi@abg%bgbi9cRbjdcbiGabg<bgbiGc5eh.d bcbe=d=dgCg"

    invoke-static {v6}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "007Mdhbebg2e5ba^d+bh"

    .line 63
    invoke-static {v6}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v5, "0057ddbebg7e$ba"

    .line 64
    invoke-static {v5}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v5, v2

    const/4 v3, 0x0

    move-object v7, v8

    move-object/from16 v8, v17

    move-object/from16 v22, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v19

    move-object/from16 v12, v20

    .line 65
    invoke-virtual/range {v5 .. v12}, Lcn/fly/tools/a/f;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    :cond_3
    move-object/from16 v22, v9

    const/4 v3, 0x0

    const/4 v5, 0x0

    goto :goto_0

    :cond_4
    move-object/from16 v22, v9

    const/4 v3, 0x0

    const-string v5, "032bcNbabhbibgbabj8e8biGabg8bgbiQc=bjdcbi^abgRbgbi)c?ehPd7bcbe;dFdg-g"

    .line 66
    invoke-static {v5}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v5, "028a$bh4dbgd2eabhbibddj;dh%bhYdabgd\'baejbhbibbbgba*d@bh"

    .line 67
    invoke-static {v5}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v5, 0x4

    new-array v9, v5, [Ljava/lang/Class;

    aput-object v15, v9, v3

    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v13

    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v12, 0x2

    aput-object v10, v9, v12

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x3

    aput-object v10, v9, v7

    new-array v10, v5, [Ljava/lang/Object;

    aput-object v0, v10, v3

    .line 68
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v10, v13

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v10, v12

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v5, v10, v7

    const/16 v17, 0x0

    move-object v5, v2

    const/4 v7, 0x0

    move-object/from16 v12, v17

    .line 69
    invoke-virtual/range {v5 .. v12}, Lcn/fly/tools/a/f;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    :goto_0
    move-object/from16 v16, v5

    const-string v5, "025bcRbabhbibgbabjbidgbjcj3d-bhbbbg=adFfa5bcbYch+dNbh"

    .line 70
    invoke-static {v5}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v5, "010Vch:dg8cj)d\'bhbbbg-ad"

    invoke-static {v5}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-array v9, v13, [Ljava/lang/Class;

    aput-object v15, v9, v3

    new-array v10, v13, [Ljava/lang/Object;

    const-string v5, "008e?biYabg3bgbi+c"

    .line 71
    invoke-static {v5}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v10, v3

    const-class v11, Landroid/os/IBinder;

    const/4 v12, 0x0

    move-object v5, v2

    .line 72
    invoke-virtual/range {v5 .. v12}, Lcn/fly/tools/a/f;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v15, v5

    check-cast v15, Landroid/os/IBinder;

    if-eqz v16, :cond_e

    if-eqz v15, :cond_e

    .line 73
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v12

    .line 74
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v11

    :try_start_0
    const-string v5, "033bc%babhbibgbabjOe:bi-abgAbgbiIcQbjccdcbiQabg<bgbi-cXfa0bcb:chTd;bh"

    .line 75
    invoke-static {v5}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 76
    invoke-static {}, Lcn/fly/tools/utils/DH$SyncMtd;->getOSVersionIntForFly()I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    const/16 v17, -0x1

    const-class v18, Ljava/util/concurrent/Executor;

    const/16 v6, 0x1f

    if-lt v5, v6, :cond_8

    .line 77
    :try_start_1
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    move-object/from16 v0, v16

    check-cast v0, Landroid/os/Parcelable;

    invoke-static {v12, v0, v3}, Lcn/fly/tools/b/p;->a(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 79
    new-instance v0, Lcn/fly/tools/b/i$1;

    invoke-direct {v0, v14, v4}, Lcn/fly/tools/b/i$1;-><init>([Ljava/lang/Object;Ljava/util/concurrent/CountDownLatch;)V

    .line 80
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "032bcTbabhbibgbabjBeAbi,abgNbgbiAc%bjdcbi)abg8bgbi%cGfa3bcbSch(dXbh"

    invoke-static {v6}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v10, v22

    .line 81
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "027@gbQdgTcbbebhbhUdcg$dcbiTabgYbgbi]cAdabhTbc[dg>hMbibhGg"

    invoke-static {v6}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x3

    new-array v6, v9, [Ljava/lang/Class;

    aput-object v18, v6, v3

    invoke-static {}, Lcn/fly/tools/b/s;->a()Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v6, v13

    const-class v7, Landroid/os/CancellationSignal;

    const/4 v8, 0x2

    aput-object v7, v6, v8

    new-array v7, v9, [Ljava/lang/Object;

    .line 82
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v9

    aput-object v9, v7, v3

    aput-object v0, v7, v13

    const/4 v9, 0x0

    aput-object v9, v7, v8

    .line 83
    invoke-virtual {v2, v5, v6, v7}, Lcn/fly/tools/a/f;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v16, :cond_5

    .line 84
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    .line 85
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    .line 86
    invoke-static/range {p0 .. p0}, Lcn/fly/tools/a/f;->a(Landroid/content/Context;)Lcn/fly/tools/a/f;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/fly/tools/a/f;->b(Landroid/content/Context;)Z

    return-object v9

    .line 87
    :cond_5
    :try_start_2
    const-class v6, Landroid/app/AppOpsManager;

    const/4 v7, 0x0

    const-string v5, "012gJbieh6dadYbgbbCdQbhccba"

    invoke-static {v5}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-array v9, v13, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Object;

    aput-object v5, v9, v3

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v0, v13, v3

    const-class v0, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/16 v18, 0x0

    move-object v5, v2

    move-object v3, v10

    move-object v10, v13

    move-object v13, v11

    move-object v11, v0

    move-object/from16 p1, v12

    move-object/from16 v12, v18

    :try_start_3
    invoke-virtual/range {v5 .. v12}, Lcn/fly/tools/a/f;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 88
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v5, :cond_6

    .line 89
    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V

    .line 90
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->recycle()V

    .line 91
    :goto_1
    invoke-static/range {p0 .. p0}, Lcn/fly/tools/a/f;->a(Landroid/content/Context;)Lcn/fly/tools/a/f;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/fly/tools/a/f;->b(Landroid/content/Context;)Z

    const/4 v1, 0x0

    return-object v1

    .line 92
    :cond_6
    :try_start_4
    move-object/from16 v5, v16

    check-cast v5, Landroid/os/IInterface;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v12, p1

    :try_start_5
    invoke-virtual {v12, v5}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 93
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    invoke-static/range {p0 .. p0}, Lcn/fly/tools/b/q;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "033bcXbabhbibgbabj<e[biIabgPbgbi8cYbjccdcbi]abg1bgbiIc,faUbcbQchDdCbh"

    invoke-static {v5}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "0045cj-gWbedd"

    invoke-static {v3}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v0, "030.daehdbcecjdbcbdaccefcebfch+dg(cbbebhbhLdcg4dcbi9abg,bgbiKc"

    .line 98
    invoke-static {v0}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object v5, v2

    .line 99
    invoke-virtual/range {v5 .. v10}, Lcn/fly/tools/a/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-gtz v0, :cond_7

    .line 100
    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V

    .line 101
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    :cond_7
    const/4 v2, 0x0

    .line 102
    :try_start_6
    invoke-interface {v15, v0, v12, v13, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v11, v12

    move-object v2, v13

    const/4 v3, 0x0

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v12, p1

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v13, v11

    :goto_2
    move-object v11, v12

    move-object v2, v13

    goto/16 :goto_7

    :cond_8
    move-object/from16 v3, v22

    const/4 v8, 0x2

    const/4 v9, 0x3

    .line 103
    :try_start_7
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v0, "0133debhbgSgd[dabiejXbXbh0ade"

    invoke-static {v0}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v10, v8, [Ljava/lang/Class;

    const-class v5, Landroid/os/Parcel;

    const/4 v7, 0x0

    aput-object v5, v10, v7

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v10, v13

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v12, v5, v7

    .line 105
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v5, v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v22, v5

    move-object v5, v2

    move-object/from16 v7, v16

    move-object v8, v0

    move-object v9, v10

    move-object/from16 v10, v22

    move-object/from16 p1, v11

    move-object/from16 v11, v20

    move-object/from16 v16, v12

    move-object/from16 v12, v21

    .line 106
    :try_start_8
    invoke-virtual/range {v5 .. v12}, Lcn/fly/tools/a/f;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 108
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    :try_start_9
    const-string v6, "017]bi^cOdcbiFabgNbgbiYc=cb\'fbcIch)dWba"

    .line 109
    invoke-static {v6}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcn/fly/tools/b/i$2;

    invoke-direct {v7, v14, v4}, Lcn/fly/tools/b/i$2;-><init>([Ljava/lang/Object;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "equals"

    .line 110
    new-instance v7, Lcn/fly/tools/b/i$3;

    invoke-direct {v7, v5}, Lcn/fly/tools/b/i$3;-><init>(I)V

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "008fb5dg(f.cbbiba*d"

    .line 111
    invoke-static {v6}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcn/fly/tools/b/i$4;

    invoke-direct {v7, v5}, Lcn/fly/tools/b/i$4;-><init>(I)V

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "033bcYbabhbibgbabj;e-bi*abg*bgbiDc4bjdcbiXabg_bgbi2cQdcbgdg[gdcd8bh"

    .line 112
    invoke-static {v5}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    new-array v6, v13, [Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    .line 113
    invoke-static {v0, v6}, Lcn/fly/tools/utils/ReflectHelper;->createProxy(Ljava/util/Map;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    .line 114
    :try_start_a
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_9

    .line 115
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->recycle()V

    .line 116
    invoke-virtual/range {v16 .. v16}, Landroid/os/Parcel;->recycle()V

    goto/16 :goto_1

    .line 117
    :cond_9
    :try_start_b
    invoke-static {}, Lcn/fly/tools/utils/DH$SyncMtd;->getOSVersionIntForFly()I

    move-result v5

    const/16 v6, 0x1e

    if-lt v5, v6, :cond_b

    .line 118
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "032bcXbabhbibgbabjYe_biLabgEbgbiNcDbjdcbiIabg>bgbi2c\'fa8bcbDch+d4bh"

    invoke-static {v6}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "0250dcbiQabg(bgbi3c3dcbgdg7gdcdBbhdabhGbcDdg@hLbibh6g"

    .line 119
    invoke-static {v6}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Class;

    const-string v8, "032bc)babhbibgbabj%e!bi:abg\'bgbi9c$bjdcbiMabg8bgbi*cMfa]bcb?chFdHbh"

    .line 120
    invoke-static {v8}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const-string v8, "033bc,babhbibgbabjReNbiXabg=bgbi(cDbjdcbiQabg_bgbi(cCdcbgdg8gdcdLbh"

    .line 121
    invoke-static {v8}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v7, v13

    new-array v6, v6, [Ljava/lang/Object;

    const-string v8, "008e^biXabgWbgbi0c"

    .line 122
    invoke-static {v8}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcn/fly/tools/utils/DH$SyncMtd;->getSystemServiceSafe(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v6, v9

    aput-object v0, v6, v13

    .line 123
    invoke-virtual {v2, v5, v7, v6}, Lcn/fly/tools/a/f;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    goto :goto_4

    .line 124
    :cond_a
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v5, "008 bh2dVchbgdg2gdHbh"

    invoke-static {v5}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-array v9, v13, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v18, v9, v5

    new-array v10, v13, [Ljava/lang/Object;

    .line 125
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    aput-object v7, v10, v5

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, v2

    move-object v7, v0

    .line 126
    invoke-virtual/range {v5 .. v12}, Lcn/fly/tools/a/f;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_b
    const/4 v6, 0x2

    .line 127
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "032bcHbabhbibgbabjMe+bi[abgYbgbi8c=bjdcbi^abg]bgbiQcRfa9bcbFch$dYbh"

    invoke-static {v7}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "017-dcbgdgEgdcdGbhdabhUbcKdgUh1bibh;g"

    .line 128
    invoke-static {v7}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x3

    new-array v8, v7, [Ljava/lang/Class;

    const-string v9, "032bcFbabhbibgbabj$eEbiYabgBbgbi*cObjdcbiOabg>bgbiIc.fa;bcb^ch;dYbh"

    .line 129
    invoke-static {v9}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const-string v9, "033bc(babhbibgbabj?eSbiHabgAbgbi=cAbjdcbi6abg]bgbi5c2dcbgdg%gdcdZbh"

    .line 130
    invoke-static {v9}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    aput-object v9, v8, v13

    const-class v9, Landroid/os/Looper;

    aput-object v9, v8, v6

    new-array v7, v7, [Ljava/lang/Object;

    const-string v9, "008e%bi?abg4bgbiHc"

    .line 131
    invoke-static {v9}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcn/fly/tools/utils/DH$SyncMtd;->getSystemServiceSafe(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v7, v10

    aput-object v0, v7, v13

    invoke-static {}, Lcn/fly/commons/a/m;->a()Lcn/fly/commons/a/m;

    move-result-object v0

    invoke-virtual {v0}, Lcn/fly/commons/a/m;->c()Landroid/os/Looper;

    move-result-object v0

    aput-object v0, v7, v6

    .line 132
    invoke-virtual {v2, v5, v8, v7}, Lcn/fly/tools/a/f;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_c

    goto/16 :goto_4

    .line 133
    :cond_c
    :goto_5
    check-cast v0, Landroid/os/IBinder;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    move-object/from16 v11, v16

    :try_start_c
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v5, 0x0

    .line 134
    invoke-virtual {v11, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "033bcAbabhbibgbabj eObi_abgUbgbi]cHbjccdcbi3abgVbgbi_c%fa*bcb@ch<d@bh"

    invoke-static {v5}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "0044cjPgKbedd"

    invoke-static {v3}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v0, "034+daehdbcecjdbcbdaccefcebfbhKd2bcbeSd,dg3g)dcbi%abg3bgbi-c.ciMhKbaXbgd_dg"

    .line 138
    invoke-static {v0}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object v5, v2

    .line 139
    invoke-virtual/range {v5 .. v10}, Lcn/fly/tools/a/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    if-gtz v0, :cond_d

    .line 140
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->recycle()V

    .line 141
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    goto/16 :goto_1

    :cond_d
    move-object/from16 v2, p1

    const/4 v3, 0x0

    .line 142
    :try_start_d
    invoke-interface {v15, v0, v11, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 143
    :goto_6
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 144
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v5, p2

    invoke-virtual {v4, v5, v6, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    aget-object v0, v14, v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 145
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 146
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    .line 147
    invoke-static/range {p0 .. p0}, Lcn/fly/tools/a/f;->a(Landroid/content/Context;)Lcn/fly/tools/a/f;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/fly/tools/a/f;->b(Landroid/content/Context;)Z

    return-object v0

    :catchall_4
    move-exception v0

    goto :goto_7

    :catchall_5
    move-exception v0

    move-object/from16 v2, p1

    goto :goto_7

    :catchall_6
    move-exception v0

    move-object/from16 v2, p1

    move-object/from16 v11, v16

    goto :goto_7

    :catchall_7
    move-exception v0

    move-object v2, v11

    move-object v11, v12

    .line 148
    :goto_7
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 149
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    .line 150
    invoke-static/range {p0 .. p0}, Lcn/fly/tools/a/f;->a(Landroid/content/Context;)Lcn/fly/tools/a/f;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/fly/tools/a/f;->b(Landroid/content/Context;)Z

    .line 151
    throw v0

    :cond_e
    const/4 v1, 0x0

    goto :goto_8

    :cond_f
    move-object v1, v3

    :goto_8
    return-object v1
.end method
