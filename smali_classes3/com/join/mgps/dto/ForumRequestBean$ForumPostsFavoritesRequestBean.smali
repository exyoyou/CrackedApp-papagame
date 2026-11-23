.class public Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/ForumRequestBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForumPostsFavoritesRequestBean"
.end annotation


# instance fields
.field private app_ver:Ljava/lang/String;

.field private device_id:Ljava/lang/String;

.field private pid:I

.field private resource_id:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private type:I

.field private uid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;->device_id:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;->app_ver:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;->resource_id:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "uid",
            "token",
            "pid",
            "device_id"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 6
    iput-object v0, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;->app_ver:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;->resource_id:Ljava/lang/String;

    .line 8
    iput p1, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;->uid:I

    .line 9
    iput-object p2, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;->token:Ljava/lang/String;

    .line 10
    iput p3, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;->pid:I

    .line 11
    iput-object p4, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;->device_id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getApp_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;->app_ver:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDevice_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;->device_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getParams()Lorg/springframework/util/LinkedMultiValueMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/springframework/util/LinkedMultiValueMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/springframework/util/LinkedMultiValueMap;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/springframework/util/LinkedMultiValueMap;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    iget v2, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;->uid:I

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, ""

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v3, "uid"

    .line 26
    .line 27
    invoke-virtual {v0, v3, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    const-string v1, "token"

    .line 31
    .line 32
    iget-object v3, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;->token:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v0, v1, v3}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    iget v3, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;->pid:I

    .line 43
    .line 44
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    const-string v3, "pid"

    .line 55
    .line 56
    invoke-virtual {v0, v3, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    const-string v1, "device_id"

    .line 60
    .line 61
    iget-object v3, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;->device_id:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v0, v1, v3}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    const-string v1, "app_ver"

    .line 67
    .line 68
    iget-object v3, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;->app_ver:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v0, v1, v3}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    const-string v1, "resource_id"

    .line 74
    .line 75
    iget-object v3, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;->resource_id:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {v0, v1, v3}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    iget v3, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;->type:I

    .line 86
    .line 87
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    const-string v2, "type"

    .line 98
    .line 99
    invoke-virtual {v0, v2, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    return-object v0
.end method

.method public getPid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;->pid:I

    .line 2
    .line 3
    return v0
.end method

.method public getResource_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;->resource_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;->token:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;->type:I

    .line 2
    .line 3
    return v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;->uid:I

    .line 2
    .line 3
    return v0
.end method

.method public setApp_ver(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "app_ver"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;->app_ver:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDevice_id(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "device_id"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;->device_id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPid(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pid"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;->pid:I

    .line 2
    .line 3
    return-void
.end method

.method public setResource_id(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resource_id"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;->resource_id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;->token:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;->type:I

    .line 2
    .line 3
    return-void
.end method

.method public setUid(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;->uid:I

    .line 2
    .line 3
    return-void
.end method
