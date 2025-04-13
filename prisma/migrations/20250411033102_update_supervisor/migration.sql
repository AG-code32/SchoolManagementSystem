/*
  Warnings:

  - You are about to drop the column `starTime` on the `Assignment` table. All the data in the column will be lost.
  - You are about to drop the column `starTime` on the `Exam` table. All the data in the column will be lost.
  - Added the required column `startDate` to the `Assignment` table without a default value. This is not possible if the table is not empty.
  - Added the required column `startTime` to the `Exam` table without a default value. This is not possible if the table is not empty.
  - Added the required column `birthday` to the `Student` table without a default value. This is not possible if the table is not empty.
  - Added the required column `birthday` to the `Teacher` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Assignment" DROP COLUMN "starTime",
ADD COLUMN     "startDate" TIMESTAMP(3) NOT NULL;

-- AlterTable
ALTER TABLE "Exam" DROP COLUMN "starTime",
ADD COLUMN     "startTime" TIMESTAMP(3) NOT NULL;

-- AlterTable
ALTER TABLE "Student" ADD COLUMN     "birthday" TIMESTAMP(3) NOT NULL;

-- AlterTable
ALTER TABLE "Teacher" ADD COLUMN     "birthday" TIMESTAMP(3) NOT NULL;
