.class public Lcom/join/mgps/dto/GradePeopleData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private people:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "people"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/join/mgps/dto/GradePeopleData;->people:I

    return-void
.end method


# virtual methods
.method public getPeople()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GradePeopleData;->people:I

    .line 2
    .line 3
    return v0
.end method

.method public setPeople(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "people"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GradePeopleData;->people:I

    .line 2
    .line 3
    return-void
.end method
