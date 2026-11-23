.class public Lcom/cloudplay/messagesdk/entity/ObserverItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private configFile:Ljava/lang/String;

.field private configName:Ljava/lang/String;

.field private configType:Lcom/cloudplay/messagesdk/entity/ConfigType;


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


# virtual methods
.method public getConfigFile()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloudplay/messagesdk/entity/ObserverItem;->configFile:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getConfigName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloudplay/messagesdk/entity/ObserverItem;->configName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getConfigType()Lcom/cloudplay/messagesdk/entity/ConfigType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloudplay/messagesdk/entity/ObserverItem;->configType:Lcom/cloudplay/messagesdk/entity/ConfigType;

    .line 2
    .line 3
    return-object v0
.end method

.method public setConfigFile(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloudplay/messagesdk/entity/ObserverItem;->configFile:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setConfigName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloudplay/messagesdk/entity/ObserverItem;->configName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setConfigType(Lcom/cloudplay/messagesdk/entity/ConfigType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloudplay/messagesdk/entity/ObserverItem;->configType:Lcom/cloudplay/messagesdk/entity/ConfigType;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "ObserverItem{configType="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/cloudplay/messagesdk/entity/ObserverItem;->configType:Lcom/cloudplay/messagesdk/entity/ConfigType;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", configName=\'"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/cloudplay/messagesdk/entity/ObserverItem;->configName:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const/16 v1, 0x27

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v2, ", configFile=\'"

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object v2, p0, Lcom/cloudplay/messagesdk/entity/ObserverItem;->configFile:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const/16 v1, 0x7d

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    return-object v0
.end method
