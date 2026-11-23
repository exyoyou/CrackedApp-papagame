.class public Lcom/join/mgps/activity/UploadActivity;
.super Lcom/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/UploadActivity$c;,
        Lcom/join/mgps/activity/UploadActivity$b;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d088d
.end annotation


# static fields
.field public static final UPLOAD_FAILD:I = -0x1

.field public static final UPLOAD_ING:I = 0x1

.field public static final UPLOAD_RECEIVE:Ljava/lang/String; = "upload"

.field public static final UPLOAD_RESULT:Ljava/lang/String; = "upload_result"

.field public static final UPLOAD_SUCCESS:I = 0x0

.field private static final imgRelativeDir:Ljava/lang/String; = "/wufan91/upload/img"

.field static prefDef:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field


# instance fields
.field accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

.field config:Lcom/papa/sim/statistic/UpLoadGameConfig;

.field dscFaildTxt:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field dscIngTxt:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field dscSuccessTxt:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field fileName:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field gameDsc:Landroid/widget/EditText;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field gameIcon:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field gameName:Landroid/widget/EditText;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field gameType:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field iconFile:Ljava/io/File;

.field img1File:Ljava/io/File;

.field img2File:Ljava/io/File;

.field img3File:Ljava/io/File;

.field imgTempFile:Ljava/io/File;

.field img_1:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field img_2:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field img_3:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field lay_1:Landroid/widget/ScrollView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field lay_2:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field lay_3:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field lay_4:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field platformBean:Lcom/join/mgps/dto/UploadDialogBean;

.field platformDialog:Lcom/join/mgps/activity/UploadActivity$b;

.field platformList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/UploadDialogBean;",
            ">;"
        }
    .end annotation
.end field

.field platformType:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field srcFile:Ljava/io/File;

.field typeBean:Lcom/join/mgps/dto/UploadDialogBean;

.field typeDialog:Lcom/join/mgps/activity/UploadActivity$c;

.field typeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/UploadDialogBean;",
            ">;"
        }
    .end annotation
.end field

.field zipFile:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private check()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->gameName:Landroid/widget/EditText;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v2, "\u6e38\u620f\u540d\u79f0\u4e0d\u80fd\u4e3a\u7a7a"

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return v1

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->typeBean:Lcom/join/mgps/dto/UploadDialogBean;

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v2, "\u6e38\u620f\u5206\u7c7b\u4e0d\u80fd\u4e3a\u7a7a"

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return v1

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->platformBean:Lcom/join/mgps/dto/UploadDialogBean;

    .line 43
    .line 44
    if-nez v0, :cond_2

    .line 45
    .line 46
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v2, "\u5e73\u53f0\u7c7b\u578b\u4e0d\u80fd\u4e3a\u7a7a"

    .line 51
    .line 52
    invoke-virtual {v0, v2}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return v1

    .line 56
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->srcFile:Ljava/io/File;

    .line 57
    .line 58
    if-nez v0, :cond_3

    .line 59
    .line 60
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const-string v2, "\u8bf7\u9009\u62e9\u6e38\u620f"

    .line 65
    .line 66
    invoke-virtual {v0, v2}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return v1

    .line 70
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->iconFile:Ljava/io/File;

    .line 71
    .line 72
    if-nez v0, :cond_4

    .line 73
    .line 74
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    const-string v2, "\u8bf7\u9009\u62e9\u56fe\u6807"

    .line 79
    .line 80
    invoke-virtual {v0, v2}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    return v1

    .line 84
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->img1File:Ljava/io/File;

    .line 85
    .line 86
    if-nez v0, :cond_5

    .line 87
    .line 88
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    const-string v2, "\u8bf7\u9009\u62e9\u622a\u56fe"

    .line 93
    .line 94
    invoke-virtual {v0, v2}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    return v1

    .line 98
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->gameDsc:Landroid/widget/EditText;

    .line 99
    .line 100
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-eqz v0, :cond_6

    .line 113
    .line 114
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    const-string v2, "\u6e38\u620f\u8bf4\u660e\u4e0d\u80fd\u4e3a\u7a7a"

    .line 119
    .line 120
    invoke-virtual {v0, v2}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    return v1

    .line 124
    :cond_6
    const/4 v0, 0x1

    .line 125
    return v0
.end method

.method private copy(Ljava/io/File;Ljava/io/File;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fileFrom",
            "fileTo"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    .line 3
    .line 4
    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 5
    .line 6
    .line 7
    new-instance p1, Ljava/io/FileOutputStream;

    .line 8
    .line 9
    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 10
    .line 11
    .line 12
    const/16 p2, 0x400

    .line 13
    .line 14
    new-array p2, p2, [B

    .line 15
    .line 16
    :goto_0
    invoke-virtual {v1, p2}, Ljava/io/FileInputStream;->read([B)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-lez v2, :cond_0

    .line 21
    .line 22
    invoke-virtual {p1, p2, v0, v2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    const/4 p1, 0x1

    .line 33
    return p1

    .line 34
    :catch_0
    return v0
.end method

.method private deleteDir(Ljava/io/File;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dir"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x0

    .line 21
    const/4 v2, 0x0

    .line 22
    :goto_0
    array-length v3, v0

    .line 23
    if-ge v2, v3, :cond_2

    .line 24
    .line 25
    new-instance v3, Ljava/io/File;

    .line 26
    .line 27
    aget-object v4, v0, v2

    .line 28
    .line 29
    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, v3}, Lcom/join/mgps/activity/UploadActivity;->deleteDir(Ljava/io/File;)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-nez v3, :cond_1

    .line 37
    .line 38
    return v1

    .line 39
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    return p1

    .line 47
    :cond_3
    :goto_1
    const/4 p1, 0x1

    .line 48
    return p1
.end method

.method private getFileName()Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, ".zip"

    .line 2
    .line 3
    const-string v1, "-"

    .line 4
    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/join/mgps/activity/UploadActivity;->gameName:Landroid/widget/EditText;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_0

    .line 24
    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    iget-object v3, p0, Lcom/join/mgps/activity/UploadActivity;->gameName:Landroid/widget/EditText;

    .line 31
    .line 32
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget-object v3, p0, Lcom/join/mgps/activity/UploadActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 51
    .line 52
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/UserInfo;->getAccount()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 63
    .line 64
    .line 65
    move-result-wide v3

    .line 66
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    goto :goto_0

    .line 77
    :cond_0
    sget-object v2, Lcom/join/mgps/activity/UploadActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 78
    .line 79
    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->upLoadConfig()Lorg/androidannotations/api/sharedpreferences/p;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v2}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    check-cast v2, Ljava/lang/String;

    .line 88
    .line 89
    const-string v3, "&"

    .line 90
    .line 91
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    new-instance v3, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    const/4 v4, 0x2

    .line 101
    aget-object v2, v2, v4

    .line 102
    .line 103
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    iget-object v2, p0, Lcom/join/mgps/activity/UploadActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 110
    .line 111
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getAccount()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 122
    .line 123
    .line 124
    move-result-wide v4

    .line 125
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    goto :goto_0

    .line 136
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    .line 141
    iget-object v3, p0, Lcom/join/mgps/activity/UploadActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 142
    .line 143
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/UserInfo;->getAccount()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 154
    .line 155
    .line 156
    move-result-wide v3

    .line 157
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .line 171
    .line 172
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    const-string v2, "/wufan91/upload/"

    .line 184
    .line 185
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    return-object v0
.end method

.method private init()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/UploadActivity;->initTypeList()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/join/mgps/activity/UploadActivity;->initPlatformList()V

    .line 5
    .line 6
    .line 7
    new-instance v0, Lcom/join/mgps/activity/UploadActivity$c;

    .line 8
    .line 9
    invoke-direct {v0, p0, p0}, Lcom/join/mgps/activity/UploadActivity$c;-><init>(Lcom/join/mgps/activity/UploadActivity;Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->typeDialog:Lcom/join/mgps/activity/UploadActivity$c;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/join/mgps/activity/UploadActivity;->typeList:Ljava/util/List;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/UploadActivity$c;->a(Ljava/util/List;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->typeDialog:Lcom/join/mgps/activity/UploadActivity$c;

    .line 20
    .line 21
    const-string v1, "\u9009\u62e9\u6e38\u620f\u5206\u7c7b"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/UploadActivity$c;->b(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    new-instance v0, Lcom/join/mgps/activity/UploadActivity$b;

    .line 27
    .line 28
    invoke-direct {v0, p0, p0}, Lcom/join/mgps/activity/UploadActivity$b;-><init>(Lcom/join/mgps/activity/UploadActivity;Landroid/content/Context;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->platformDialog:Lcom/join/mgps/activity/UploadActivity$b;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/join/mgps/activity/UploadActivity;->platformList:Ljava/util/List;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/UploadActivity$b;->a(Ljava/util/List;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->platformDialog:Lcom/join/mgps/activity/UploadActivity$b;

    .line 39
    .line 40
    const-string v1, "\u9009\u62e9\u6e38\u620f\u5e73\u53f0"

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/UploadActivity$b;->b(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    new-instance v0, Lcom/papa/sim/statistic/UpLoadGameConfig;

    .line 46
    .line 47
    invoke-direct {v0}, Lcom/papa/sim/statistic/UpLoadGameConfig;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->config:Lcom/papa/sim/statistic/UpLoadGameConfig;

    .line 51
    .line 52
    sget-object v0, Lcom/join/mgps/activity/UploadActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->upLoadConfig()Lorg/androidannotations/api/sharedpreferences/p;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->i()V

    .line 59
    .line 60
    .line 61
    sget-object v0, Lcom/join/mgps/activity/UploadActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->upLoadFileName()Lorg/androidannotations/api/sharedpreferences/p;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Ljava/lang/String;

    .line 72
    .line 73
    new-instance v1, Ljava/io/File;

    .line 74
    .line 75
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_0

    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 85
    .line 86
    .line 87
    :cond_0
    sget-object v0, Lcom/join/mgps/activity/UploadActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->upLoadFileName()Lorg/androidannotations/api/sharedpreferences/p;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->i()V

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method private initPlatformList()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->platformList:Ljava/util/List;

    .line 7
    .line 8
    new-instance v0, Lcom/join/mgps/dto/UploadDialogBean;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/join/mgps/dto/UploadDialogBean;-><init>()V

    .line 11
    .line 12
    .line 13
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/UploadDialogBean;->setIsSelect(Ljava/lang/Boolean;)V

    .line 16
    .line 17
    .line 18
    const-string v2, "\u8857\u673a"

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/UploadDialogBean;->setName(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/16 v2, 0x1f

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/UploadDialogBean;->setCode(I)V

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Lcom/join/mgps/activity/UploadActivity;->platformList:Ljava/util/List;

    .line 29
    .line 30
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    new-instance v0, Lcom/join/mgps/dto/UploadDialogBean;

    .line 34
    .line 35
    invoke-direct {v0}, Lcom/join/mgps/dto/UploadDialogBean;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/UploadDialogBean;->setIsSelect(Ljava/lang/Boolean;)V

    .line 39
    .line 40
    .line 41
    const-string v2, "gba"

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/UploadDialogBean;->setName(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const/16 v2, 0x21

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/UploadDialogBean;->setCode(I)V

    .line 49
    .line 50
    .line 51
    iget-object v2, p0, Lcom/join/mgps/activity/UploadActivity;->platformList:Ljava/util/List;

    .line 52
    .line 53
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    new-instance v0, Lcom/join/mgps/dto/UploadDialogBean;

    .line 57
    .line 58
    invoke-direct {v0}, Lcom/join/mgps/dto/UploadDialogBean;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/UploadDialogBean;->setIsSelect(Ljava/lang/Boolean;)V

    .line 62
    .line 63
    .line 64
    const-string v2, "psp"

    .line 65
    .line 66
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/UploadDialogBean;->setName(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const/16 v2, 0x22

    .line 70
    .line 71
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/UploadDialogBean;->setCode(I)V

    .line 72
    .line 73
    .line 74
    iget-object v2, p0, Lcom/join/mgps/activity/UploadActivity;->platformList:Ljava/util/List;

    .line 75
    .line 76
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    new-instance v0, Lcom/join/mgps/dto/UploadDialogBean;

    .line 80
    .line 81
    invoke-direct {v0}, Lcom/join/mgps/dto/UploadDialogBean;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/UploadDialogBean;->setIsSelect(Ljava/lang/Boolean;)V

    .line 85
    .line 86
    .line 87
    const-string v2, "fc"

    .line 88
    .line 89
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/UploadDialogBean;->setName(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    const/16 v2, 0x23

    .line 93
    .line 94
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/UploadDialogBean;->setCode(I)V

    .line 95
    .line 96
    .line 97
    iget-object v2, p0, Lcom/join/mgps/activity/UploadActivity;->platformList:Ljava/util/List;

    .line 98
    .line 99
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    new-instance v0, Lcom/join/mgps/dto/UploadDialogBean;

    .line 103
    .line 104
    invoke-direct {v0}, Lcom/join/mgps/dto/UploadDialogBean;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/UploadDialogBean;->setIsSelect(Ljava/lang/Boolean;)V

    .line 108
    .line 109
    .line 110
    const-string v2, "nds"

    .line 111
    .line 112
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/UploadDialogBean;->setName(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    const/16 v2, 0x20

    .line 116
    .line 117
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/UploadDialogBean;->setCode(I)V

    .line 118
    .line 119
    .line 120
    iget-object v2, p0, Lcom/join/mgps/activity/UploadActivity;->platformList:Ljava/util/List;

    .line 121
    .line 122
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    new-instance v0, Lcom/join/mgps/dto/UploadDialogBean;

    .line 126
    .line 127
    invoke-direct {v0}, Lcom/join/mgps/dto/UploadDialogBean;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/UploadDialogBean;->setIsSelect(Ljava/lang/Boolean;)V

    .line 131
    .line 132
    .line 133
    const-string v2, "sfc"

    .line 134
    .line 135
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/UploadDialogBean;->setName(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    const/16 v2, 0x2b

    .line 139
    .line 140
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/UploadDialogBean;->setCode(I)V

    .line 141
    .line 142
    .line 143
    iget-object v2, p0, Lcom/join/mgps/activity/UploadActivity;->platformList:Ljava/util/List;

    .line 144
    .line 145
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    new-instance v0, Lcom/join/mgps/dto/UploadDialogBean;

    .line 149
    .line 150
    invoke-direct {v0}, Lcom/join/mgps/dto/UploadDialogBean;-><init>()V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/UploadDialogBean;->setIsSelect(Ljava/lang/Boolean;)V

    .line 154
    .line 155
    .line 156
    const-string v2, "android"

    .line 157
    .line 158
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/UploadDialogBean;->setName(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    const/16 v2, 0x2e

    .line 162
    .line 163
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/UploadDialogBean;->setCode(I)V

    .line 164
    .line 165
    .line 166
    iget-object v2, p0, Lcom/join/mgps/activity/UploadActivity;->platformList:Ljava/util/List;

    .line 167
    .line 168
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    new-instance v0, Lcom/join/mgps/dto/UploadDialogBean;

    .line 172
    .line 173
    invoke-direct {v0}, Lcom/join/mgps/dto/UploadDialogBean;-><init>()V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/UploadDialogBean;->setIsSelect(Ljava/lang/Boolean;)V

    .line 177
    .line 178
    .line 179
    const-string v1, "md"

    .line 180
    .line 181
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/UploadDialogBean;->setName(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    const/16 v1, 0x33

    .line 185
    .line 186
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/UploadDialogBean;->setCode(I)V

    .line 187
    .line 188
    .line 189
    iget-object v1, p0, Lcom/join/mgps/activity/UploadActivity;->platformList:Ljava/util/List;

    .line 190
    .line 191
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    return-void
.end method

.method private initTypeList()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->typeList:Ljava/util/List;

    .line 7
    .line 8
    new-instance v0, Lcom/join/mgps/dto/UploadDialogBean;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/join/mgps/dto/UploadDialogBean;-><init>()V

    .line 11
    .line 12
    .line 13
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/UploadDialogBean;->setIsSelect(Ljava/lang/Boolean;)V

    .line 16
    .line 17
    .line 18
    const-string v2, "\u683c\u6597\u6e38\u620f"

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/UploadDialogBean;->setName(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/16 v2, 0x12

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/UploadDialogBean;->setCode(I)V

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Lcom/join/mgps/activity/UploadActivity;->typeList:Ljava/util/List;

    .line 29
    .line 30
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    new-instance v0, Lcom/join/mgps/dto/UploadDialogBean;

    .line 34
    .line 35
    invoke-direct {v0}, Lcom/join/mgps/dto/UploadDialogBean;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/UploadDialogBean;->setIsSelect(Ljava/lang/Boolean;)V

    .line 39
    .line 40
    .line 41
    const-string v2, "\u7b56\u7565\u6e38\u620f"

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/UploadDialogBean;->setName(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const/16 v2, 0x13

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/UploadDialogBean;->setCode(I)V

    .line 49
    .line 50
    .line 51
    iget-object v2, p0, Lcom/join/mgps/activity/UploadActivity;->typeList:Ljava/util/List;

    .line 52
    .line 53
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    new-instance v0, Lcom/join/mgps/dto/UploadDialogBean;

    .line 57
    .line 58
    invoke-direct {v0}, Lcom/join/mgps/dto/UploadDialogBean;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/UploadDialogBean;->setIsSelect(Ljava/lang/Boolean;)V

    .line 62
    .line 63
    .line 64
    const-string v2, "\u89d2\u8272\u626e\u6f14"

    .line 65
    .line 66
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/UploadDialogBean;->setName(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const/16 v2, 0x14

    .line 70
    .line 71
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/UploadDialogBean;->setCode(I)V

    .line 72
    .line 73
    .line 74
    iget-object v2, p0, Lcom/join/mgps/activity/UploadActivity;->typeList:Ljava/util/List;

    .line 75
    .line 76
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    new-instance v0, Lcom/join/mgps/dto/UploadDialogBean;

    .line 80
    .line 81
    invoke-direct {v0}, Lcom/join/mgps/dto/UploadDialogBean;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/UploadDialogBean;->setIsSelect(Ljava/lang/Boolean;)V

    .line 85
    .line 86
    .line 87
    const-string v2, "\u7ade\u901f\u6e38\u620f"

    .line 88
    .line 89
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/UploadDialogBean;->setName(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    const/16 v2, 0x15

    .line 93
    .line 94
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/UploadDialogBean;->setCode(I)V

    .line 95
    .line 96
    .line 97
    iget-object v2, p0, Lcom/join/mgps/activity/UploadActivity;->typeList:Ljava/util/List;

    .line 98
    .line 99
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    new-instance v0, Lcom/join/mgps/dto/UploadDialogBean;

    .line 103
    .line 104
    invoke-direct {v0}, Lcom/join/mgps/dto/UploadDialogBean;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/UploadDialogBean;->setIsSelect(Ljava/lang/Boolean;)V

    .line 108
    .line 109
    .line 110
    const-string v2, "\u4f53\u80b2\u6e38\u620f"

    .line 111
    .line 112
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/UploadDialogBean;->setName(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    const/16 v2, 0x16

    .line 116
    .line 117
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/UploadDialogBean;->setCode(I)V

    .line 118
    .line 119
    .line 120
    iget-object v2, p0, Lcom/join/mgps/activity/UploadActivity;->typeList:Ljava/util/List;

    .line 121
    .line 122
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    new-instance v0, Lcom/join/mgps/dto/UploadDialogBean;

    .line 126
    .line 127
    invoke-direct {v0}, Lcom/join/mgps/dto/UploadDialogBean;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/UploadDialogBean;->setIsSelect(Ljava/lang/Boolean;)V

    .line 131
    .line 132
    .line 133
    const-string v2, "\u4f11\u95f2\u76ca\u667a"

    .line 134
    .line 135
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/UploadDialogBean;->setName(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    const/16 v2, 0x17

    .line 139
    .line 140
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/UploadDialogBean;->setCode(I)V

    .line 141
    .line 142
    .line 143
    iget-object v2, p0, Lcom/join/mgps/activity/UploadActivity;->typeList:Ljava/util/List;

    .line 144
    .line 145
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    new-instance v0, Lcom/join/mgps/dto/UploadDialogBean;

    .line 149
    .line 150
    invoke-direct {v0}, Lcom/join/mgps/dto/UploadDialogBean;-><init>()V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/UploadDialogBean;->setIsSelect(Ljava/lang/Boolean;)V

    .line 154
    .line 155
    .line 156
    const-string v2, "\u52a8\u4f5c\u6e38\u620f"

    .line 157
    .line 158
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/UploadDialogBean;->setName(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    const/16 v2, 0x18

    .line 162
    .line 163
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/UploadDialogBean;->setCode(I)V

    .line 164
    .line 165
    .line 166
    iget-object v2, p0, Lcom/join/mgps/activity/UploadActivity;->typeList:Ljava/util/List;

    .line 167
    .line 168
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    new-instance v0, Lcom/join/mgps/dto/UploadDialogBean;

    .line 172
    .line 173
    invoke-direct {v0}, Lcom/join/mgps/dto/UploadDialogBean;-><init>()V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/UploadDialogBean;->setIsSelect(Ljava/lang/Boolean;)V

    .line 177
    .line 178
    .line 179
    const-string v1, "\u5c04\u51fb\u98de\u884c"

    .line 180
    .line 181
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/UploadDialogBean;->setName(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    const/16 v1, 0x19

    .line 185
    .line 186
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/UploadDialogBean;->setCode(I)V

    .line 187
    .line 188
    .line 189
    iget-object v1, p0, Lcom/join/mgps/activity/UploadActivity;->typeList:Ljava/util/List;

    .line 190
    .line 191
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    return-void
.end method

.method private isImgIn2M(Ljava/io/File;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/math/BigDecimal;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/io/File;->length()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(J)V

    .line 8
    .line 9
    .line 10
    new-instance p1, Ljava/math/BigDecimal;

    .line 11
    .line 12
    const/high16 v1, 0x100000

    .line 13
    .line 14
    invoke-direct {p1, v1}, Ljava/math/BigDecimal;-><init>(I)V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x2

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v0, p1, v1, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Ljava/math/BigDecimal;->floatValue()F

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    const/high16 v0, 0x40000000    # 2.0f

    .line 28
    .line 29
    cmpg-float p1, p1, v0

    .line 30
    .line 31
    if-gtz p1, :cond_0

    .line 32
    .line 33
    const/4 v2, 0x1

    .line 34
    :cond_0
    return v2
.end method

.method private judgePngOrJpg(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 1
    const-string v0, "jpg"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const-string v0, "png"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 21
    :goto_1
    return p1
.end method

.method private reNameImg()V
    .locals 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x17

    .line 4
    .line 5
    const-string v2, "/wufan91/upload/img"

    .line 6
    .line 7
    if-lt v0, v1, :cond_0

    .line 8
    .line 9
    const-string v0, "android.permission-group.STORAGE"

    .line 10
    .line 11
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    new-instance v1, Ljava/io/File;

    .line 41
    .line 42
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-direct {p0, v1}, Lcom/join/mgps/activity/UploadActivity;->deleteDir(Ljava/io/File;)Z

    .line 46
    .line 47
    .line 48
    :cond_0
    const-string v0, ""

    .line 49
    .line 50
    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    if-eqz v1, :cond_1

    .line 55
    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    goto :goto_0

    .line 76
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    :goto_0
    new-instance v1, Ljava/io/File;

    .line 96
    .line 97
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iput-object v1, p0, Lcom/join/mgps/activity/UploadActivity;->imgTempFile:Ljava/io/File;

    .line 101
    .line 102
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_2

    .line 107
    .line 108
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->imgTempFile:Ljava/io/File;

    .line 109
    .line 110
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/UploadActivity;->deleteDir(Ljava/io/File;)Z

    .line 111
    .line 112
    .line 113
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->imgTempFile:Ljava/io/File;

    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->iconFile:Ljava/io/File;

    .line 119
    .line 120
    const-string v1, "jpg"

    .line 121
    .line 122
    const-string v2, "png"

    .line 123
    .line 124
    if-eqz v0, :cond_4

    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-eqz v0, :cond_4

    .line 131
    .line 132
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->iconFile:Ljava/io/File;

    .line 133
    .line 134
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-eqz v0, :cond_3

    .line 143
    .line 144
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->iconFile:Ljava/io/File;

    .line 145
    .line 146
    new-instance v3, Ljava/io/File;

    .line 147
    .line 148
    new-instance v4, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .line 152
    .line 153
    iget-object v5, p0, Lcom/join/mgps/activity/UploadActivity;->imgTempFile:Ljava/io/File;

    .line 154
    .line 155
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    const-string v5, "/icon.png"

    .line 163
    .line 164
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-direct {p0, v0, v3}, Lcom/join/mgps/activity/UploadActivity;->copy(Ljava/io/File;Ljava/io/File;)Z

    .line 175
    .line 176
    .line 177
    goto :goto_1

    .line 178
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->iconFile:Ljava/io/File;

    .line 179
    .line 180
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    if-eqz v0, :cond_4

    .line 189
    .line 190
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->iconFile:Ljava/io/File;

    .line 191
    .line 192
    new-instance v3, Ljava/io/File;

    .line 193
    .line 194
    new-instance v4, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .line 198
    .line 199
    iget-object v5, p0, Lcom/join/mgps/activity/UploadActivity;->imgTempFile:Ljava/io/File;

    .line 200
    .line 201
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v5

    .line 205
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    const-string v5, "/icon.jpg"

    .line 209
    .line 210
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-direct {p0, v0, v3}, Lcom/join/mgps/activity/UploadActivity;->copy(Ljava/io/File;Ljava/io/File;)Z

    .line 221
    .line 222
    .line 223
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->img1File:Ljava/io/File;

    .line 224
    .line 225
    if-eqz v0, :cond_6

    .line 226
    .line 227
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    if-eqz v0, :cond_6

    .line 232
    .line 233
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->img1File:Ljava/io/File;

    .line 234
    .line 235
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    if-eqz v0, :cond_5

    .line 244
    .line 245
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->img1File:Ljava/io/File;

    .line 246
    .line 247
    new-instance v3, Ljava/io/File;

    .line 248
    .line 249
    new-instance v4, Ljava/lang/StringBuilder;

    .line 250
    .line 251
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 252
    .line 253
    .line 254
    iget-object v5, p0, Lcom/join/mgps/activity/UploadActivity;->imgTempFile:Ljava/io/File;

    .line 255
    .line 256
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v5

    .line 260
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    const-string v5, "/img_1.png"

    .line 264
    .line 265
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v4

    .line 272
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    invoke-direct {p0, v0, v3}, Lcom/join/mgps/activity/UploadActivity;->copy(Ljava/io/File;Ljava/io/File;)Z

    .line 276
    .line 277
    .line 278
    goto :goto_2

    .line 279
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->iconFile:Ljava/io/File;

    .line 280
    .line 281
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 286
    .line 287
    .line 288
    move-result v0

    .line 289
    if-eqz v0, :cond_6

    .line 290
    .line 291
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->img1File:Ljava/io/File;

    .line 292
    .line 293
    new-instance v3, Ljava/io/File;

    .line 294
    .line 295
    new-instance v4, Ljava/lang/StringBuilder;

    .line 296
    .line 297
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 298
    .line 299
    .line 300
    iget-object v5, p0, Lcom/join/mgps/activity/UploadActivity;->imgTempFile:Ljava/io/File;

    .line 301
    .line 302
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v5

    .line 306
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    const-string v5, "/img_1.jpg"

    .line 310
    .line 311
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v4

    .line 318
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    invoke-direct {p0, v0, v3}, Lcom/join/mgps/activity/UploadActivity;->copy(Ljava/io/File;Ljava/io/File;)Z

    .line 322
    .line 323
    .line 324
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->img2File:Ljava/io/File;

    .line 325
    .line 326
    if-eqz v0, :cond_8

    .line 327
    .line 328
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 329
    .line 330
    .line 331
    move-result v0

    .line 332
    if-eqz v0, :cond_8

    .line 333
    .line 334
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->img2File:Ljava/io/File;

    .line 335
    .line 336
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 341
    .line 342
    .line 343
    move-result v0

    .line 344
    if-eqz v0, :cond_7

    .line 345
    .line 346
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->img2File:Ljava/io/File;

    .line 347
    .line 348
    new-instance v3, Ljava/io/File;

    .line 349
    .line 350
    new-instance v4, Ljava/lang/StringBuilder;

    .line 351
    .line 352
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 353
    .line 354
    .line 355
    iget-object v5, p0, Lcom/join/mgps/activity/UploadActivity;->imgTempFile:Ljava/io/File;

    .line 356
    .line 357
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v5

    .line 361
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    const-string v5, "/img_2.png"

    .line 365
    .line 366
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v4

    .line 373
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    invoke-direct {p0, v0, v3}, Lcom/join/mgps/activity/UploadActivity;->copy(Ljava/io/File;Ljava/io/File;)Z

    .line 377
    .line 378
    .line 379
    goto :goto_3

    .line 380
    :cond_7
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->iconFile:Ljava/io/File;

    .line 381
    .line 382
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 387
    .line 388
    .line 389
    move-result v0

    .line 390
    if-eqz v0, :cond_8

    .line 391
    .line 392
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->img2File:Ljava/io/File;

    .line 393
    .line 394
    new-instance v3, Ljava/io/File;

    .line 395
    .line 396
    new-instance v4, Ljava/lang/StringBuilder;

    .line 397
    .line 398
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 399
    .line 400
    .line 401
    iget-object v5, p0, Lcom/join/mgps/activity/UploadActivity;->imgTempFile:Ljava/io/File;

    .line 402
    .line 403
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v5

    .line 407
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    const-string v5, "/img_2.jpg"

    .line 411
    .line 412
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v4

    .line 419
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    invoke-direct {p0, v0, v3}, Lcom/join/mgps/activity/UploadActivity;->copy(Ljava/io/File;Ljava/io/File;)Z

    .line 423
    .line 424
    .line 425
    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->img3File:Ljava/io/File;

    .line 426
    .line 427
    if-eqz v0, :cond_a

    .line 428
    .line 429
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 430
    .line 431
    .line 432
    move-result v0

    .line 433
    if-eqz v0, :cond_a

    .line 434
    .line 435
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->img3File:Ljava/io/File;

    .line 436
    .line 437
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v0

    .line 441
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 442
    .line 443
    .line 444
    move-result v0

    .line 445
    if-eqz v0, :cond_9

    .line 446
    .line 447
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->img3File:Ljava/io/File;

    .line 448
    .line 449
    new-instance v1, Ljava/io/File;

    .line 450
    .line 451
    new-instance v2, Ljava/lang/StringBuilder;

    .line 452
    .line 453
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 454
    .line 455
    .line 456
    iget-object v3, p0, Lcom/join/mgps/activity/UploadActivity;->imgTempFile:Ljava/io/File;

    .line 457
    .line 458
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v3

    .line 462
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    .line 464
    .line 465
    const-string v3, "/img_3.png"

    .line 466
    .line 467
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    .line 469
    .line 470
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v2

    .line 474
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 475
    .line 476
    .line 477
    invoke-direct {p0, v0, v1}, Lcom/join/mgps/activity/UploadActivity;->copy(Ljava/io/File;Ljava/io/File;)Z

    .line 478
    .line 479
    .line 480
    goto :goto_4

    .line 481
    :cond_9
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->iconFile:Ljava/io/File;

    .line 482
    .line 483
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v0

    .line 487
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 488
    .line 489
    .line 490
    move-result v0

    .line 491
    if-eqz v0, :cond_a

    .line 492
    .line 493
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->img3File:Ljava/io/File;

    .line 494
    .line 495
    new-instance v1, Ljava/io/File;

    .line 496
    .line 497
    new-instance v2, Ljava/lang/StringBuilder;

    .line 498
    .line 499
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 500
    .line 501
    .line 502
    iget-object v3, p0, Lcom/join/mgps/activity/UploadActivity;->imgTempFile:Ljava/io/File;

    .line 503
    .line 504
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 505
    .line 506
    .line 507
    move-result-object v3

    .line 508
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    .line 510
    .line 511
    const-string v3, "/img_3.jpg"

    .line 512
    .line 513
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    .line 515
    .line 516
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    move-result-object v2

    .line 520
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 521
    .line 522
    .line 523
    invoke-direct {p0, v0, v1}, Lcom/join/mgps/activity/UploadActivity;->copy(Ljava/io/File;Ljava/io/File;)Z

    .line 524
    .line 525
    .line 526
    :cond_a
    :goto_4
    return-void
.end method


# virtual methods
.method afterView()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 10
    .line 11
    sget-object v0, Lcom/join/mgps/activity/UploadActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->upLoadState()Lorg/androidannotations/api/sharedpreferences/i;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ljava/lang/Integer;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v1, 0x0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    sget-object v0, Lcom/join/mgps/activity/UploadActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->upLoadGame()Lorg/androidannotations/api/sharedpreferences/p;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_0

    .line 47
    .line 48
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->lay_1:Landroid/widget/ScrollView;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    invoke-direct {p0}, Lcom/join/mgps/activity/UploadActivity;->init()V

    .line 54
    .line 55
    .line 56
    goto/16 :goto_0

    .line 57
    .line 58
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/activity/UploadActivity;->lay_4:Landroid/widget/LinearLayout;

    .line 59
    .line 60
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Lcom/join/mgps/activity/UploadActivity;->dscSuccessTxt:Landroid/widget/TextView;

    .line 64
    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string v3, "\u6e38\u620f "

    .line 71
    .line 72
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v0, " \u5df2\u4e0a\u4f20\u6210\u529f\uff0c\u611f\u8c22\u5206\u4eab"

    .line 79
    .line 80
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    .line 89
    .line 90
    goto/16 :goto_0

    .line 91
    .line 92
    :cond_1
    sget-object v0, Lcom/join/mgps/activity/UploadActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->upLoadState()Lorg/androidannotations/api/sharedpreferences/i;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    check-cast v0, Ljava/lang/Integer;

    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    const/4 v2, 0x1

    .line 109
    const-string v3, "\u4f60\u7684\u6e38\u620f "

    .line 110
    .line 111
    if-ne v0, v2, :cond_2

    .line 112
    .line 113
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->lay_2:Landroid/widget/LinearLayout;

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->dscIngTxt:Landroid/widget/TextView;

    .line 119
    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    sget-object v2, Lcom/join/mgps/activity/UploadActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 129
    .line 130
    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->upLoadGame()Lorg/androidannotations/api/sharedpreferences/p;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    invoke-virtual {v2}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    check-cast v2, Ljava/lang/String;

    .line 139
    .line 140
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v2, " \u6b63\u5728\u4e0a\u4f20\u4e2d"

    .line 144
    .line 145
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    .line 154
    .line 155
    goto/16 :goto_0

    .line 156
    .line 157
    :cond_2
    sget-object v0, Lcom/join/mgps/activity/UploadActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 158
    .line 159
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->upLoadState()Lorg/androidannotations/api/sharedpreferences/i;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    check-cast v0, Ljava/lang/Integer;

    .line 168
    .line 169
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    const/4 v2, -0x1

    .line 174
    if-ne v0, v2, :cond_4

    .line 175
    .line 176
    new-instance v0, Ljava/io/File;

    .line 177
    .line 178
    sget-object v2, Lcom/join/mgps/activity/UploadActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 179
    .line 180
    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->upLoadFileName()Lorg/androidannotations/api/sharedpreferences/p;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    invoke-virtual {v2}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    check-cast v2, Ljava/lang/String;

    .line 189
    .line 190
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    sget-object v2, Lcom/join/mgps/activity/UploadActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 194
    .line 195
    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->upLoadConfig()Lorg/androidannotations/api/sharedpreferences/p;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    invoke-virtual {v2}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    check-cast v2, Ljava/lang/String;

    .line 204
    .line 205
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    if-eqz v0, :cond_3

    .line 210
    .line 211
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    if-nez v0, :cond_3

    .line 216
    .line 217
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->lay_3:Landroid/widget/LinearLayout;

    .line 218
    .line 219
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 220
    .line 221
    .line 222
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->dscFaildTxt:Landroid/widget/TextView;

    .line 223
    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    .line 225
    .line 226
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    sget-object v2, Lcom/join/mgps/activity/UploadActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 233
    .line 234
    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->upLoadGame()Lorg/androidannotations/api/sharedpreferences/p;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    invoke-virtual {v2}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    check-cast v2, Ljava/lang/String;

    .line 243
    .line 244
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    const-string v2, " \u4e0a\u4f20\u5df2\u4e2d\u6b62"

    .line 248
    .line 249
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    .line 258
    .line 259
    goto :goto_0

    .line 260
    :cond_3
    sget-object v0, Lcom/join/mgps/activity/UploadActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 261
    .line 262
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->upLoadState()Lorg/androidannotations/api/sharedpreferences/i;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    invoke-virtual {v0, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 271
    .line 272
    .line 273
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->lay_1:Landroid/widget/ScrollView;

    .line 274
    .line 275
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 276
    .line 277
    .line 278
    invoke-direct {p0}, Lcom/join/mgps/activity/UploadActivity;->init()V

    .line 279
    .line 280
    .line 281
    :cond_4
    :goto_0
    return-void
.end method

.method backImage()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method continue_upload()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/join/mgps/activity/UploadActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->upLoadGame()Lorg/androidannotations/api/sharedpreferences/p;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->i()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->lay_4:Landroid/widget/LinearLayout;

    .line 17
    .line 18
    const/16 v1, 0x8

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->lay_1:Landroid/widget/ScrollView;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Lcom/join/mgps/activity/UploadActivity;->init()V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v1, "\u7f51\u7edc\u5f02\u5e38"

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    return-void
.end method

.method file_lay()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Lcom/join/mgps/activity/SDCardFileExplorerActivity_;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    const/16 v1, 0x64

    .line 9
    .line 10
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method gameIcon_lay()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/UploadActivity;->goMyAlbumActivity4Icon()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method gameType_lay()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->typeDialog:Lcom/join/mgps/activity/UploadActivity$c;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public goMyAlbumActivity4Icon()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Lcom/join/android/app/component/album/MyAlbumActivity;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "MAX_PICK_SIZE"

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 12
    .line 13
    .line 14
    const/16 v1, 0xc8

    .line 15
    .line 16
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public goMyAlbumActivity4Img()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Lcom/join/android/app/component/album/MyAlbumActivity;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "MAX_PICK_SIZE"

    .line 9
    .line 10
    const/4 v2, 0x3

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 12
    .line 13
    .line 14
    const/16 v1, 0x12c

    .line 15
    .line 16
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method img_lay()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/UploadActivity;->goMyAlbumActivity4Img()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "resultCode",
            "data"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/BaseFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x64

    .line 5
    .line 6
    if-ne p2, v0, :cond_0

    .line 7
    .line 8
    const-string p1, "srcFile"

    .line 9
    .line 10
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Ljava/io/File;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/join/mgps/activity/UploadActivity;->srcFile:Ljava/io/File;

    .line 17
    .line 18
    iget-object p2, p0, Lcom/join/mgps/activity/UploadActivity;->fileName:Landroid/widget/TextView;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    .line 27
    goto/16 :goto_0

    .line 28
    .line 29
    :cond_0
    const/16 p2, 0xc8

    .line 30
    .line 31
    const-string v0, "key_selected_images"

    .line 32
    .line 33
    const-string v1, "\u8bf7\u9009\u62e9PNG\u6216JPG\u683c\u5f0f\u56fe\u7247"

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    if-ne p1, p2, :cond_2

    .line 37
    .line 38
    if-eqz p3, :cond_b

    .line 39
    .line 40
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    if-eqz p1, :cond_b

    .line 45
    .line 46
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    if-lez p2, :cond_b

    .line 51
    .line 52
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    check-cast p2, Ljava/lang/String;

    .line 57
    .line 58
    invoke-direct {p0, p2}, Lcom/join/mgps/activity/UploadActivity;->judgePngOrJpg(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    if-eqz p2, :cond_1

    .line 63
    .line 64
    new-instance p2, Ljava/io/File;

    .line 65
    .line 66
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    check-cast p1, Ljava/lang/String;

    .line 71
    .line 72
    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iput-object p2, p0, Lcom/join/mgps/activity/UploadActivity;->iconFile:Ljava/io/File;

    .line 76
    .line 77
    iget-object p1, p0, Lcom/join/mgps/activity/UploadActivity;->gameIcon:Landroid/widget/TextView;

    .line 78
    .line 79
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    .line 85
    .line 86
    goto/16 :goto_0

    .line 87
    .line 88
    :cond_1
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p1, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    goto/16 :goto_0

    .line 96
    .line 97
    :cond_2
    const/16 p2, 0x12c

    .line 98
    .line 99
    if-ne p1, p2, :cond_b

    .line 100
    .line 101
    if-eqz p3, :cond_b

    .line 102
    .line 103
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    if-eqz p1, :cond_b

    .line 108
    .line 109
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 110
    .line 111
    .line 112
    move-result p2

    .line 113
    if-lez p2, :cond_b

    .line 114
    .line 115
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 116
    .line 117
    .line 118
    move-result p2

    .line 119
    const-string p3, "\u4e3a\u4e86\u4f60\u7684\u6d41\u91cf\uff0c\u4e0a\u4f20\u56fe\u7247\u4e0d\u80fd\u8d85\u8fc72M\u54e6"

    .line 120
    .line 121
    const/16 v0, 0x8

    .line 122
    .line 123
    const/4 v3, 0x1

    .line 124
    const/4 v4, 0x0

    .line 125
    if-ne p2, v3, :cond_5

    .line 126
    .line 127
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    check-cast p2, Ljava/lang/String;

    .line 132
    .line 133
    invoke-direct {p0, p2}, Lcom/join/mgps/activity/UploadActivity;->judgePngOrJpg(Ljava/lang/String;)Z

    .line 134
    .line 135
    .line 136
    move-result p2

    .line 137
    if-eqz p2, :cond_4

    .line 138
    .line 139
    iget-object p2, p0, Lcom/join/mgps/activity/UploadActivity;->img_1:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 140
    .line 141
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 142
    .line 143
    .line 144
    iget-object p2, p0, Lcom/join/mgps/activity/UploadActivity;->img_2:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 145
    .line 146
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 147
    .line 148
    .line 149
    iget-object p2, p0, Lcom/join/mgps/activity/UploadActivity;->img_3:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 150
    .line 151
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 152
    .line 153
    .line 154
    new-instance p2, Ljava/io/File;

    .line 155
    .line 156
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    check-cast v0, Ljava/lang/String;

    .line 161
    .line 162
    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    iput-object p2, p0, Lcom/join/mgps/activity/UploadActivity;->img1File:Ljava/io/File;

    .line 166
    .line 167
    iput-object v4, p0, Lcom/join/mgps/activity/UploadActivity;->img2File:Ljava/io/File;

    .line 168
    .line 169
    iput-object v4, p0, Lcom/join/mgps/activity/UploadActivity;->img3File:Ljava/io/File;

    .line 170
    .line 171
    invoke-direct {p0, p2}, Lcom/join/mgps/activity/UploadActivity;->isImgIn2M(Ljava/io/File;)Z

    .line 172
    .line 173
    .line 174
    move-result p2

    .line 175
    if-eqz p2, :cond_3

    .line 176
    .line 177
    iget-object p2, p0, Lcom/join/mgps/activity/UploadActivity;->img_1:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 178
    .line 179
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    check-cast p1, Ljava/lang/String;

    .line 184
    .line 185
    invoke-static {p2, p1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    goto/16 :goto_0

    .line 189
    .line 190
    :cond_3
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    invoke-virtual {p1, p3}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    iget-object p1, p0, Lcom/join/mgps/activity/UploadActivity;->img1File:Ljava/io/File;

    .line 198
    .line 199
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 200
    .line 201
    .line 202
    iput-object v4, p0, Lcom/join/mgps/activity/UploadActivity;->img1File:Ljava/io/File;

    .line 203
    .line 204
    goto/16 :goto_0

    .line 205
    .line 206
    :cond_4
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    invoke-virtual {p1, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    goto/16 :goto_0

    .line 214
    .line 215
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 216
    .line 217
    .line 218
    move-result p2

    .line 219
    const/4 v5, 0x2

    .line 220
    if-ne p2, v5, :cond_8

    .line 221
    .line 222
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object p2

    .line 226
    check-cast p2, Ljava/lang/String;

    .line 227
    .line 228
    invoke-direct {p0, p2}, Lcom/join/mgps/activity/UploadActivity;->judgePngOrJpg(Ljava/lang/String;)Z

    .line 229
    .line 230
    .line 231
    move-result p2

    .line 232
    if-eqz p2, :cond_7

    .line 233
    .line 234
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object p2

    .line 238
    check-cast p2, Ljava/lang/String;

    .line 239
    .line 240
    invoke-direct {p0, p2}, Lcom/join/mgps/activity/UploadActivity;->judgePngOrJpg(Ljava/lang/String;)Z

    .line 241
    .line 242
    .line 243
    move-result p2

    .line 244
    if-eqz p2, :cond_7

    .line 245
    .line 246
    iget-object p2, p0, Lcom/join/mgps/activity/UploadActivity;->img_1:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 247
    .line 248
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 249
    .line 250
    .line 251
    iget-object p2, p0, Lcom/join/mgps/activity/UploadActivity;->img_2:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 252
    .line 253
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 254
    .line 255
    .line 256
    iget-object p2, p0, Lcom/join/mgps/activity/UploadActivity;->img_3:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 257
    .line 258
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 259
    .line 260
    .line 261
    new-instance p2, Ljava/io/File;

    .line 262
    .line 263
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    check-cast v0, Ljava/lang/String;

    .line 268
    .line 269
    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    iput-object p2, p0, Lcom/join/mgps/activity/UploadActivity;->img1File:Ljava/io/File;

    .line 273
    .line 274
    new-instance p2, Ljava/io/File;

    .line 275
    .line 276
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    check-cast v0, Ljava/lang/String;

    .line 281
    .line 282
    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    iput-object p2, p0, Lcom/join/mgps/activity/UploadActivity;->img2File:Ljava/io/File;

    .line 286
    .line 287
    iput-object v4, p0, Lcom/join/mgps/activity/UploadActivity;->img3File:Ljava/io/File;

    .line 288
    .line 289
    iget-object p2, p0, Lcom/join/mgps/activity/UploadActivity;->img1File:Ljava/io/File;

    .line 290
    .line 291
    invoke-direct {p0, p2}, Lcom/join/mgps/activity/UploadActivity;->isImgIn2M(Ljava/io/File;)Z

    .line 292
    .line 293
    .line 294
    move-result p2

    .line 295
    if-eqz p2, :cond_6

    .line 296
    .line 297
    iget-object p2, p0, Lcom/join/mgps/activity/UploadActivity;->img2File:Ljava/io/File;

    .line 298
    .line 299
    invoke-direct {p0, p2}, Lcom/join/mgps/activity/UploadActivity;->isImgIn2M(Ljava/io/File;)Z

    .line 300
    .line 301
    .line 302
    move-result p2

    .line 303
    if-eqz p2, :cond_6

    .line 304
    .line 305
    iget-object p2, p0, Lcom/join/mgps/activity/UploadActivity;->img_1:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 306
    .line 307
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object p3

    .line 311
    check-cast p3, Ljava/lang/String;

    .line 312
    .line 313
    invoke-static {p2, p3}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    iget-object p2, p0, Lcom/join/mgps/activity/UploadActivity;->img_2:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 317
    .line 318
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object p1

    .line 322
    check-cast p1, Ljava/lang/String;

    .line 323
    .line 324
    invoke-static {p2, p1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    goto/16 :goto_0

    .line 328
    .line 329
    :cond_6
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 330
    .line 331
    .line 332
    move-result-object p1

    .line 333
    invoke-virtual {p1, p3}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    iget-object p1, p0, Lcom/join/mgps/activity/UploadActivity;->img1File:Ljava/io/File;

    .line 337
    .line 338
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 339
    .line 340
    .line 341
    iget-object p1, p0, Lcom/join/mgps/activity/UploadActivity;->img2File:Ljava/io/File;

    .line 342
    .line 343
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 344
    .line 345
    .line 346
    iput-object v4, p0, Lcom/join/mgps/activity/UploadActivity;->img1File:Ljava/io/File;

    .line 347
    .line 348
    iput-object v4, p0, Lcom/join/mgps/activity/UploadActivity;->img2File:Ljava/io/File;

    .line 349
    .line 350
    goto/16 :goto_0

    .line 351
    .line 352
    :cond_7
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 353
    .line 354
    .line 355
    move-result-object p1

    .line 356
    invoke-virtual {p1, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    goto/16 :goto_0

    .line 360
    .line 361
    :cond_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 362
    .line 363
    .line 364
    move-result p2

    .line 365
    const/4 v0, 0x3

    .line 366
    if-lt p2, v0, :cond_b

    .line 367
    .line 368
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    move-result-object p2

    .line 372
    check-cast p2, Ljava/lang/String;

    .line 373
    .line 374
    invoke-direct {p0, p2}, Lcom/join/mgps/activity/UploadActivity;->judgePngOrJpg(Ljava/lang/String;)Z

    .line 375
    .line 376
    .line 377
    move-result p2

    .line 378
    if-eqz p2, :cond_a

    .line 379
    .line 380
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    move-result-object p2

    .line 384
    check-cast p2, Ljava/lang/String;

    .line 385
    .line 386
    invoke-direct {p0, p2}, Lcom/join/mgps/activity/UploadActivity;->judgePngOrJpg(Ljava/lang/String;)Z

    .line 387
    .line 388
    .line 389
    move-result p2

    .line 390
    if-eqz p2, :cond_a

    .line 391
    .line 392
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 393
    .line 394
    .line 395
    move-result-object p2

    .line 396
    check-cast p2, Ljava/lang/String;

    .line 397
    .line 398
    invoke-direct {p0, p2}, Lcom/join/mgps/activity/UploadActivity;->judgePngOrJpg(Ljava/lang/String;)Z

    .line 399
    .line 400
    .line 401
    move-result p2

    .line 402
    if-eqz p2, :cond_a

    .line 403
    .line 404
    iget-object p2, p0, Lcom/join/mgps/activity/UploadActivity;->img_1:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 405
    .line 406
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 407
    .line 408
    .line 409
    iget-object p2, p0, Lcom/join/mgps/activity/UploadActivity;->img_2:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 410
    .line 411
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 412
    .line 413
    .line 414
    iget-object p2, p0, Lcom/join/mgps/activity/UploadActivity;->img_3:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 415
    .line 416
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 417
    .line 418
    .line 419
    new-instance p2, Ljava/io/File;

    .line 420
    .line 421
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 422
    .line 423
    .line 424
    move-result-object v0

    .line 425
    check-cast v0, Ljava/lang/String;

    .line 426
    .line 427
    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    iput-object p2, p0, Lcom/join/mgps/activity/UploadActivity;->img1File:Ljava/io/File;

    .line 431
    .line 432
    new-instance p2, Ljava/io/File;

    .line 433
    .line 434
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 435
    .line 436
    .line 437
    move-result-object v0

    .line 438
    check-cast v0, Ljava/lang/String;

    .line 439
    .line 440
    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 441
    .line 442
    .line 443
    iput-object p2, p0, Lcom/join/mgps/activity/UploadActivity;->img2File:Ljava/io/File;

    .line 444
    .line 445
    new-instance p2, Ljava/io/File;

    .line 446
    .line 447
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 448
    .line 449
    .line 450
    move-result-object v0

    .line 451
    check-cast v0, Ljava/lang/String;

    .line 452
    .line 453
    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 454
    .line 455
    .line 456
    iput-object p2, p0, Lcom/join/mgps/activity/UploadActivity;->img3File:Ljava/io/File;

    .line 457
    .line 458
    iget-object p2, p0, Lcom/join/mgps/activity/UploadActivity;->img1File:Ljava/io/File;

    .line 459
    .line 460
    invoke-direct {p0, p2}, Lcom/join/mgps/activity/UploadActivity;->isImgIn2M(Ljava/io/File;)Z

    .line 461
    .line 462
    .line 463
    move-result p2

    .line 464
    if-eqz p2, :cond_9

    .line 465
    .line 466
    iget-object p2, p0, Lcom/join/mgps/activity/UploadActivity;->img2File:Ljava/io/File;

    .line 467
    .line 468
    invoke-direct {p0, p2}, Lcom/join/mgps/activity/UploadActivity;->isImgIn2M(Ljava/io/File;)Z

    .line 469
    .line 470
    .line 471
    move-result p2

    .line 472
    if-eqz p2, :cond_9

    .line 473
    .line 474
    iget-object p2, p0, Lcom/join/mgps/activity/UploadActivity;->img3File:Ljava/io/File;

    .line 475
    .line 476
    invoke-direct {p0, p2}, Lcom/join/mgps/activity/UploadActivity;->isImgIn2M(Ljava/io/File;)Z

    .line 477
    .line 478
    .line 479
    move-result p2

    .line 480
    if-eqz p2, :cond_9

    .line 481
    .line 482
    iget-object p2, p0, Lcom/join/mgps/activity/UploadActivity;->img_1:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 483
    .line 484
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 485
    .line 486
    .line 487
    move-result-object p3

    .line 488
    check-cast p3, Ljava/lang/String;

    .line 489
    .line 490
    invoke-static {p2, p3}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 491
    .line 492
    .line 493
    iget-object p2, p0, Lcom/join/mgps/activity/UploadActivity;->img_2:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 494
    .line 495
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 496
    .line 497
    .line 498
    move-result-object p3

    .line 499
    check-cast p3, Ljava/lang/String;

    .line 500
    .line 501
    invoke-static {p2, p3}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 502
    .line 503
    .line 504
    iget-object p2, p0, Lcom/join/mgps/activity/UploadActivity;->img_3:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 505
    .line 506
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 507
    .line 508
    .line 509
    move-result-object p1

    .line 510
    check-cast p1, Ljava/lang/String;

    .line 511
    .line 512
    invoke-static {p2, p1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 513
    .line 514
    .line 515
    goto :goto_0

    .line 516
    :cond_9
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 517
    .line 518
    .line 519
    move-result-object p1

    .line 520
    invoke-virtual {p1, p3}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 521
    .line 522
    .line 523
    iget-object p1, p0, Lcom/join/mgps/activity/UploadActivity;->img1File:Ljava/io/File;

    .line 524
    .line 525
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 526
    .line 527
    .line 528
    iget-object p1, p0, Lcom/join/mgps/activity/UploadActivity;->img2File:Ljava/io/File;

    .line 529
    .line 530
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 531
    .line 532
    .line 533
    iget-object p1, p0, Lcom/join/mgps/activity/UploadActivity;->img3File:Ljava/io/File;

    .line 534
    .line 535
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 536
    .line 537
    .line 538
    iput-object v4, p0, Lcom/join/mgps/activity/UploadActivity;->img1File:Ljava/io/File;

    .line 539
    .line 540
    iput-object v4, p0, Lcom/join/mgps/activity/UploadActivity;->img2File:Ljava/io/File;

    .line 541
    .line 542
    iput-object v4, p0, Lcom/join/mgps/activity/UploadActivity;->img3File:Ljava/io/File;

    .line 543
    .line 544
    goto :goto_0

    .line 545
    :cond_a
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 546
    .line 547
    .line 548
    move-result-object p1

    .line 549
    invoke-virtual {p1, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 550
    .line 551
    .line 552
    :cond_b
    :goto_0
    return-void
.end method

.method platformType_lay()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->platformDialog:Lcom/join/mgps/activity/UploadActivity$b;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method re_continue_upload()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/join/mgps/activity/UploadActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->upLoadGame()Lorg/androidannotations/api/sharedpreferences/p;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->i()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->lay_4:Landroid/widget/LinearLayout;

    .line 17
    .line 18
    const/16 v1, 0x8

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->lay_3:Landroid/widget/LinearLayout;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->lay_2:Landroid/widget/LinearLayout;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->lay_1:Landroid/widget/ScrollView;

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0}, Lcom/join/mgps/activity/UploadActivity;->init()V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-string v1, "\u7f51\u7edc\u5f02\u5e38"

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    return-void
.end method

.method reupload()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    :try_start_0
    new-instance v1, Ljava/io/File;

    .line 9
    .line 10
    sget-object v2, Lcom/join/mgps/activity/UploadActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 11
    .line 12
    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->upLoadFileName()Lorg/androidannotations/api/sharedpreferences/p;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Ljava/lang/String;

    .line 21
    .line 22
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sget-object v2, Lcom/join/mgps/activity/UploadActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->upLoadConfig()Lorg/androidannotations/api/sharedpreferences/p;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Ljava/lang/String;

    .line 36
    .line 37
    const-string v3, "&"

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    new-instance v3, Lcom/papa/sim/statistic/UpLoadGameConfig;

    .line 44
    .line 45
    invoke-direct {v3}, Lcom/papa/sim/statistic/UpLoadGameConfig;-><init>()V

    .line 46
    .line 47
    .line 48
    aget-object v4, v2, v0

    .line 49
    .line 50
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    invoke-virtual {v3, v4}, Lcom/papa/sim/statistic/UpLoadGameConfig;->setUid(I)V

    .line 55
    .line 56
    .line 57
    const/4 v4, 0x1

    .line 58
    aget-object v5, v2, v4

    .line 59
    .line 60
    invoke-virtual {v3, v5}, Lcom/papa/sim/statistic/UpLoadGameConfig;->setToken(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const/4 v5, 0x2

    .line 64
    aget-object v5, v2, v5

    .line 65
    .line 66
    invoke-virtual {v3, v5}, Lcom/papa/sim/statistic/UpLoadGameConfig;->setGame_name(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const/4 v5, 0x3

    .line 70
    aget-object v5, v2, v5

    .line 71
    .line 72
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    invoke-virtual {v3, v5}, Lcom/papa/sim/statistic/UpLoadGameConfig;->setGame_type(I)V

    .line 77
    .line 78
    .line 79
    const/4 v5, 0x4

    .line 80
    aget-object v5, v2, v5

    .line 81
    .line 82
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    invoke-virtual {v3, v5}, Lcom/papa/sim/statistic/UpLoadGameConfig;->setGame_platform_type(I)V

    .line 87
    .line 88
    .line 89
    const/4 v5, 0x5

    .line 90
    aget-object v2, v2, v5

    .line 91
    .line 92
    invoke-virtual {v3, v2}, Lcom/papa/sim/statistic/UpLoadGameConfig;->setGame_explain(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, p0, v3, v1}, Lcom/join/mgps/activity/UploadActivity;->syncUpLoadInfo(Landroid/content/Context;Lcom/papa/sim/statistic/UpLoadGameConfig;Ljava/io/File;)V

    .line 96
    .line 97
    .line 98
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    const-string v2, "\u5f00\u59cb\u4e0a\u4f20"

    .line 103
    .line 104
    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    sget-object v1, Lcom/join/mgps/activity/UploadActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 108
    .line 109
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->upLoadState()Lorg/androidannotations/api/sharedpreferences/i;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-virtual {v1, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :catch_0
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    const-string v2, "\u4e0a\u4f20\u5931\u8d25"

    .line 126
    .line 127
    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    sget-object v1, Lcom/join/mgps/activity/UploadActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 131
    .line 132
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->upLoadState()Lorg/androidannotations/api/sharedpreferences/i;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {v1, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 144
    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    const-string v1, "\u7f51\u7edc\u5f02\u5e38"

    .line 152
    .line 153
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    :goto_1
    return-void
.end method

.method showToast()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "\u4e0a\u4f20\u5b8c\u6210"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method stopupload()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/join/android/app/common/http/h;->b()Lcom/join/android/app/common/http/h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/UploadActivity;->zipFile:Ljava/io/File;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lcom/join/android/app/common/http/h;->a(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sget-object v0, Lcom/join/mgps/activity/UploadActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->upLoadState()Lorg/androidannotations/api/sharedpreferences/i;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v1, -0x1

    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    new-instance v0, Landroid/content/Intent;

    .line 29
    .line 30
    const-string v1, "upload"

    .line 31
    .line 32
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string v1, "upload_result"

    .line 36
    .line 37
    const/4 v2, 0x1

    .line 38
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 47
    .line 48
    .line 49
    :goto_0
    return-void
.end method

.method public syncUpLoadInfo(Landroid/content/Context;Lcom/papa/sim/statistic/UpLoadGameConfig;Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "upLoadGameConfig",
            "file"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Lcom/join/android/app/common/http/h;->b()Lcom/join/android/app/common/http/h;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lcom/join/mgps/activity/UploadActivity$a;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/UploadActivity$a;-><init>(Lcom/join/mgps/activity/UploadActivity;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/join/android/app/common/http/h;->h(Landroid/content/Context;Lcom/papa/sim/statistic/UpLoadGameConfig;Ljava/io/File;Lcom/join/android/app/common/http/b;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method upLoad()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "\u5f00\u59cb\u4e0a\u4f20"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method updateUI(I)V
    .locals 1
    .param p1    # I
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
            value = "upload_result"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "UPLOAD_STATE"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "upload"
        }
        registerAt = .enum Lorg/androidannotations/annotations/Receiver$RegisterAt;->OnResumeOnPause:Lorg/androidannotations/annotations/Receiver$RegisterAt;
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/UploadActivity;->uploadFinishInUI()V

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, -0x1

    .line 8
    if-ne p1, v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/activity/UploadActivity;->uploadFaildInUI()V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    const/4 v0, 0x1

    .line 15
    if-ne p1, v0, :cond_2

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/join/mgps/activity/UploadActivity;->uploadFaildInUI()V

    .line 18
    .line 19
    .line 20
    :cond_2
    :goto_0
    return-void
.end method

.method uploadBtn()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/join/mgps/activity/UploadActivity;->check()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/activity/UploadActivity;->zipFile()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/join/mgps/activity/UploadActivity;->upLoad()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "\u7f51\u7edc\u5f02\u5e38"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    :goto_0
    return-void
.end method

.method uploadDsc()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x8

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 9
    .line 10
    .line 11
    const-string v1, "12449"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1, p0, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method uploadFaildInUI()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->lay_1:Landroid/widget/ScrollView;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->lay_2:Landroid/widget/LinearLayout;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->lay_3:Landroid/widget/LinearLayout;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->lay_4:Landroid/widget/LinearLayout;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Ljava/io/File;

    .line 24
    .line 25
    sget-object v1, Lcom/join/mgps/activity/UploadActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->upLoadFileName()Lorg/androidannotations/api/sharedpreferences/p;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Ljava/lang/String;

    .line 36
    .line 37
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    sget-object v1, Lcom/join/mgps/activity/UploadActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->upLoadConfig()Lorg/androidannotations/api/sharedpreferences/p;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    const/4 v2, 0x0

    .line 57
    if-eqz v0, :cond_0

    .line 58
    .line 59
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_0

    .line 64
    .line 65
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->lay_3:Landroid/widget/LinearLayout;

    .line 66
    .line 67
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->dscFaildTxt:Landroid/widget/TextView;

    .line 71
    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    const-string v2, "\u4f60\u7684\u6e38\u620f "

    .line 78
    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    sget-object v2, Lcom/join/mgps/activity/UploadActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 83
    .line 84
    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->upLoadGame()Lorg/androidannotations/api/sharedpreferences/p;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {v2}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    check-cast v2, Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v2, " \u4e0a\u4f20\u5df2\u7ec8\u6b62"

    .line 98
    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_0
    sget-object v0, Lcom/join/mgps/activity/UploadActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 111
    .line 112
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->upLoadState()Lorg/androidannotations/api/sharedpreferences/i;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->lay_1:Landroid/widget/ScrollView;

    .line 124
    .line 125
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 126
    .line 127
    .line 128
    invoke-direct {p0}, Lcom/join/mgps/activity/UploadActivity;->init()V

    .line 129
    .line 130
    .line 131
    :goto_0
    return-void
.end method

.method uploadFinishInUI()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->lay_4:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->lay_1:Landroid/widget/ScrollView;

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->lay_2:Landroid/widget/LinearLayout;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->lay_3:Landroid/widget/LinearLayout;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->dscSuccessTxt:Landroid/widget/TextView;

    .line 25
    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v2, "\u6e38\u620f "

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    sget-object v2, Lcom/join/mgps/activity/UploadActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 37
    .line 38
    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->upLoadGame()Lorg/androidannotations/api/sharedpreferences/p;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v2}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v2, " \u5df2\u4e0a\u4f20\u6210\u529f\uff0c\u611f\u8c22\u5206\u4eab"

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method zipFile()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->config:Lcom/papa/sim/statistic/UpLoadGameConfig;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/UploadActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/UpLoadGameConfig;->setUid(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->config:Lcom/papa/sim/statistic/UpLoadGameConfig;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/join/mgps/activity/UploadActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/UpLoadGameConfig;->setToken(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->config:Lcom/papa/sim/statistic/UpLoadGameConfig;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/join/mgps/activity/UploadActivity;->gameName:Landroid/widget/EditText;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/UpLoadGameConfig;->setGame_name(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->config:Lcom/papa/sim/statistic/UpLoadGameConfig;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/join/mgps/activity/UploadActivity;->typeBean:Lcom/join/mgps/dto/UploadDialogBean;

    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/join/mgps/dto/UploadDialogBean;->getCode()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/UpLoadGameConfig;->setGame_type(I)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->config:Lcom/papa/sim/statistic/UpLoadGameConfig;

    .line 50
    .line 51
    iget-object v1, p0, Lcom/join/mgps/activity/UploadActivity;->platformBean:Lcom/join/mgps/dto/UploadDialogBean;

    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/join/mgps/dto/UploadDialogBean;->getCode()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/UpLoadGameConfig;->setGame_platform_type(I)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->config:Lcom/papa/sim/statistic/UpLoadGameConfig;

    .line 61
    .line 62
    iget-object v1, p0, Lcom/join/mgps/activity/UploadActivity;->gameDsc:Landroid/widget/EditText;

    .line 63
    .line 64
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/UpLoadGameConfig;->setGame_explain(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-direct {p0}, Lcom/join/mgps/activity/UploadActivity;->reNameImg()V

    .line 76
    .line 77
    .line 78
    invoke-direct {p0}, Lcom/join/mgps/activity/UploadActivity;->getFileName()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    new-instance v1, Ljava/io/File;

    .line 83
    .line 84
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iput-object v1, p0, Lcom/join/mgps/activity/UploadActivity;->zipFile:Ljava/io/File;

    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-eqz v1, :cond_0

    .line 94
    .line 95
    iget-object v1, p0, Lcom/join/mgps/activity/UploadActivity;->zipFile:Ljava/io/File;

    .line 96
    .line 97
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 98
    .line 99
    .line 100
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 101
    .line 102
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .line 104
    .line 105
    iget-object v2, p0, Lcom/join/mgps/activity/UploadActivity;->srcFile:Ljava/io/File;

    .line 106
    .line 107
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    iget-object v2, p0, Lcom/join/mgps/activity/UploadActivity;->imgTempFile:Ljava/io/File;

    .line 111
    .line 112
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    sget-object v2, Lcom/join/mgps/activity/UploadActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 116
    .line 117
    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->upLoadFileName()Lorg/androidannotations/api/sharedpreferences/p;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-virtual {v2, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    sget-object v0, Lcom/join/mgps/activity/UploadActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 125
    .line 126
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->upLoadState()Lorg/androidannotations/api/sharedpreferences/i;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    check-cast v0, Ljava/lang/Integer;

    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    const/4 v2, 0x1

    .line 141
    if-eq v0, v2, :cond_2

    .line 142
    .line 143
    sget-object v0, Lcom/join/mgps/activity/UploadActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 144
    .line 145
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->upLoadState()Lorg/androidannotations/api/sharedpreferences/i;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    invoke-virtual {v0, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    sget-object v0, Lcom/join/mgps/activity/UploadActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 157
    .line 158
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->upLoadGame()Lorg/androidannotations/api/sharedpreferences/p;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    iget-object v2, p0, Lcom/join/mgps/activity/UploadActivity;->gameName:Landroid/widget/EditText;

    .line 163
    .line 164
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    invoke-virtual {v0, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    sget-object v0, Lcom/join/mgps/activity/UploadActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 176
    .line 177
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->upLoadConfig()Lorg/androidannotations/api/sharedpreferences/p;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->i()V

    .line 182
    .line 183
    .line 184
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->config:Lcom/papa/sim/statistic/UpLoadGameConfig;

    .line 185
    .line 186
    if-eqz v0, :cond_1

    .line 187
    .line 188
    sget-object v0, Lcom/join/mgps/activity/UploadActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 189
    .line 190
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->upLoadConfig()Lorg/androidannotations/api/sharedpreferences/p;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    iget-object v2, p0, Lcom/join/mgps/activity/UploadActivity;->config:Lcom/papa/sim/statistic/UpLoadGameConfig;

    .line 195
    .line 196
    invoke-virtual {v2}, Lcom/papa/sim/statistic/UpLoadGameConfig;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    invoke-virtual {v0, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->zipFile:Ljava/io/File;

    .line 204
    .line 205
    const-string v2, ""

    .line 206
    .line 207
    invoke-static {v1, v0, v2}, Lcom/join/mgps/Util/s3;->l(Ljava/util/Collection;Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    .line 209
    .line 210
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->config:Lcom/papa/sim/statistic/UpLoadGameConfig;

    .line 211
    .line 212
    iget-object v1, p0, Lcom/join/mgps/activity/UploadActivity;->zipFile:Ljava/io/File;

    .line 213
    .line 214
    invoke-virtual {p0, p0, v0, v1}, Lcom/join/mgps/activity/UploadActivity;->syncUpLoadInfo(Landroid/content/Context;Lcom/papa/sim/statistic/UpLoadGameConfig;Ljava/io/File;)V

    .line 215
    .line 216
    .line 217
    goto :goto_0

    .line 218
    :catch_0
    sget-object v0, Lcom/join/mgps/activity/UploadActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 219
    .line 220
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->upLoadState()Lorg/androidannotations/api/sharedpreferences/i;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    const/4 v1, -0x1

    .line 225
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 230
    .line 231
    .line 232
    :cond_2
    :goto_0
    return-void
.end method
