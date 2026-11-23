.class public Lcom/join/mgps/dto/BattaleSwitchBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private cfg_switch:I

.field private cfg_values:Ljava/lang/String;


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
.method public getCfg_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/BattaleSwitchBean;->cfg_switch:I

    .line 2
    .line 3
    return v0
.end method

.method public getCfg_values()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BattaleSwitchBean;->cfg_values:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setCfg_switch(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cfg_switch"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/BattaleSwitchBean;->cfg_switch:I

    .line 2
    .line 3
    return-void
.end method

.method public setCfg_values(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cfg_values"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BattaleSwitchBean;->cfg_values:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
