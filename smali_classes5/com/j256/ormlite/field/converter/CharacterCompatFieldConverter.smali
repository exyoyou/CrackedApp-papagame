.class public Lcom/j256/ormlite/field/converter/CharacterCompatFieldConverter;
.super Lcom/j256/ormlite/field/BaseFieldConverter;
.source "SourceFile"


# instance fields
.field private final wrappedConverter:Lcom/j256/ormlite/field/FieldConverter;


# direct methods
.method public constructor <init>(Lcom/j256/ormlite/field/FieldConverter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/j256/ormlite/field/BaseFieldConverter;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/j256/ormlite/field/converter/CharacterCompatFieldConverter;->wrappedConverter:Lcom/j256/ormlite/field/FieldConverter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getSqlType()Lcom/j256/ormlite/field/SqlType;
    .locals 1

    .line 1
    sget-object v0, Lcom/j256/ormlite/field/SqlType;->CHAR:Lcom/j256/ormlite/field/SqlType;

    .line 2
    .line 3
    return-object v0
.end method

.method public javaToSqlArg(Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/j256/ormlite/field/converter/CharacterCompatFieldConverter;->wrappedConverter:Lcom/j256/ormlite/field/FieldConverter;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/j256/ormlite/field/FieldConverter;->javaToSqlArg(Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return-object p1

    .line 11
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public makeConfigObject(Lcom/j256/ormlite/field/FieldType;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/j256/ormlite/field/converter/CharacterCompatFieldConverter;->wrappedConverter:Lcom/j256/ormlite/field/FieldConverter;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/j256/ormlite/field/FieldConverter;->makeConfigObject(Lcom/j256/ormlite/field/FieldType;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public parseDefaultString(Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/j256/ormlite/field/converter/CharacterCompatFieldConverter;->wrappedConverter:Lcom/j256/ormlite/field/FieldConverter;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/j256/ormlite/field/FieldConverter;->parseDefaultString(Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return-object p1

    .line 11
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public resultStringToJava(Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/j256/ormlite/field/converter/CharacterCompatFieldConverter;->wrappedConverter:Lcom/j256/ormlite/field/FieldConverter;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Lcom/j256/ormlite/field/FieldConverter;->resultStringToJava(Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public resultToJava(Lcom/j256/ormlite/field/FieldType;Lcom/j256/ormlite/support/DatabaseResults;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/j256/ormlite/field/converter/CharacterCompatFieldConverter;->wrappedConverter:Lcom/j256/ormlite/field/FieldConverter;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Lcom/j256/ormlite/field/FieldConverter;->resultToJava(Lcom/j256/ormlite/field/FieldType;Lcom/j256/ormlite/support/DatabaseResults;I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public resultToSqlArg(Lcom/j256/ormlite/field/FieldType;Lcom/j256/ormlite/support/DatabaseResults;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/j256/ormlite/field/converter/CharacterCompatFieldConverter;->wrappedConverter:Lcom/j256/ormlite/field/FieldConverter;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Lcom/j256/ormlite/field/FieldConverter;->resultToSqlArg(Lcom/j256/ormlite/field/FieldType;Lcom/j256/ormlite/support/DatabaseResults;I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public sqlArgToJava(Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/j256/ormlite/field/converter/CharacterCompatFieldConverter;->wrappedConverter:Lcom/j256/ormlite/field/FieldConverter;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Lcom/j256/ormlite/field/FieldConverter;->sqlArgToJava(Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
