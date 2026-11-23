.class public Lcom/baidu/passbqt/common/SecurityUtil;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/passbqt/NoProguard;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a([B)Ljava/lang/String;
    .locals 1

    .line 2
    new-instance v0, Lcom/baidu/passbqt/common/Security;

    invoke-direct {v0}, Lcom/baidu/passbqt/common/Security;-><init>()V

    invoke-virtual {v0, p0}, Lcom/baidu/passbqt/common/Security;->a([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a([BZ)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Lcom/baidu/passbqt/common/Security;

    invoke-direct {v0}, Lcom/baidu/passbqt/common/Security;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/baidu/passbqt/common/Security;->a([BZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/baidu/passbqt/common/Security$AES;

    invoke-direct {v0}, Lcom/baidu/passbqt/common/Security$AES;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Lcom/baidu/passbqt/common/Security$AES;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static a([BLjava/lang/String;Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4
    new-instance v0, Lcom/baidu/passbqt/common/Security$AES;

    invoke-direct {v0}, Lcom/baidu/passbqt/common/Security$AES;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Lcom/baidu/passbqt/common/Security$AES;->a([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static b([B)[B
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Landroid/util/Base64;->decode([BI)[B

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method
