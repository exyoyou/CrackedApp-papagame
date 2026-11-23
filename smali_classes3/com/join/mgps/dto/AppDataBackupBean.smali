.class public Lcom/join/mgps/dto/AppDataBackupBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private compare_val:[Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/dto/AppDataBackupBean;->type:I

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "compare_val",
            "type"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/join/mgps/dto/AppDataBackupBean;->compare_val:[Ljava/lang/String;

    .line 5
    iput p2, p0, Lcom/join/mgps/dto/AppDataBackupBean;->type:I

    return-void
.end method


# virtual methods
.method public getCompare_val()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppDataBackupBean;->compare_val:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AppDataBackupBean;->type:I

    .line 2
    .line 3
    return v0
.end method

.method public setCompare_val([Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "compare_val"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AppDataBackupBean;->compare_val:[Ljava/lang/String;

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
    iput p1, p0, Lcom/join/mgps/dto/AppDataBackupBean;->type:I

    .line 2
    .line 3
    return-void
.end method
